package com.anisoft.basa_khuji.config

import com.anisoft.basa_khuji.shared.RateLimitingService
import jakarta.servlet.http.HttpServletRequest
import org.springframework.beans.factory.annotation.Value
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.http.HttpMethod
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.http.SessionCreationPolicy
import org.springframework.security.oauth2.jwt.JwtDecoder
import org.springframework.security.oauth2.jwt.NimbusJwtDecoder
import org.springframework.security.web.SecurityFilterChain
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter
import org.springframework.web.cors.CorsConfiguration
import org.springframework.web.cors.CorsConfigurationSource
import org.springframework.web.filter.OncePerRequestFilter
import java.time.Instant

@Configuration
@EnableMethodSecurity
class SecurityConfig(
    private val rateLimitingService: RateLimitingService
) {

    @Value("\${supabase.jwks-url}")
    private lateinit var jwksUrl: String

    @Value("\${app.cors.allowed-origins}")
    private lateinit var allowedOrigins: String

    @Bean
    fun jwtDecoder(): JwtDecoder {
        return NimbusJwtDecoder.withJwkSetUri(jwksUrl).build()
    }

    @Bean
    fun securityFilterChain(http: HttpSecurity): SecurityFilterChain {
        http
            .csrf { it.disable() }
            .cors { it.configurationSource(corsConfigurationSource()) }
            .sessionManagement { it.sessionCreationPolicy(SessionCreationPolicy.STATELESS) }
            .authorizeHttpRequests { auth ->
                auth.requestMatchers("/v1/basakhuji/locations/**").permitAll()
                auth.requestMatchers("/v1/basakhuji/properties/public/**").permitAll()
                auth.requestMatchers("/v1/basakhuji/auth/verify-otp").permitAll()
                auth.requestMatchers("/actuator/health", "/actuator/info").permitAll()
                auth.requestMatchers("/swagger-ui/**", "/v3/api-docs/**").permitAll()
                auth.anyRequest().authenticated()
            }
            .oauth2ResourceServer { oauth2 ->
                oauth2.jwt { jwt ->
                    jwt.decoder(jwtDecoder())
                }
            }
            .addFilterBefore(rateLimitingFilter(), UsernamePasswordAuthenticationFilter::class.java)
            .headers { headers ->
                headers
                    .contentSecurityPolicy { csp ->
                        csp.policyDirectives("default-src 'self'; script-src 'self'; style-src 'self' 'unsafe-inline'")
                    }
                    .frameOptions { frame -> frame.sameOrigin() }
                    .referrerPolicy { referrer -> referrer.policy(org.springframework.security.web.header.writers.ReferrerPolicyHeaderWriter.ReferrerPolicy.STRICT_ORIGIN_WHEN_CROSS_ORIGIN) }
                    .httpStrictTransportSecurity { hsts ->
                        hsts.includeSubDomains(true).maxAgeInSeconds(31536000).preload(true)
                    }
            }

        return http.build()
    }

    private fun corsConfigurationSource(): CorsConfigurationSource {
        return CorsConfigurationSource { _ ->
            CorsConfiguration().apply {
                allowedOrigins = allowedOrigins.split(",").map { it.trim() }
                allowedMethods = listOf("GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS")
                allowedHeaders = listOf("Authorization", "Content-Type", "Accept", "X-Requested-With")
                exposedHeaders = listOf("X-RateLimit-Remaining", "X-RateLimit-Reset")
                allowCredentials = true
                maxAge = 3600
            }
        }
    }

    private fun rateLimitingFilter(): OncePerRequestFilter {
        return object : OncePerRequestFilter() {
            override fun doFilterInternal(
                request: HttpServletRequest,
                response: jakarta.servlet.http.HttpServletResponse,
                filterChain: jakarta.servlet.FilterChain
            ) {
                val clientIp = request.getHeader("X-Forwarded-For")?.split(",")?.first()?.trim()
                    ?: request.remoteAddr

                if (!rateLimitingService.tryConsume(clientIp)) {
                    response.status = 429
                    response.contentType = "application/json"
                    response.writer.write(
                        """{"code":"RATE_LIMITED","message":"Too many requests","retryAfter":"${rateLimitingService.getRetryAfterSeconds(clientIp)}s"}"""
                    )
                    return
                }

                filterChain.doFilter(request, response)
            }
        }
    }
}
