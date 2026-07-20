package com.anisoft.basa_khuji.config

import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer
import org.springframework.security.web.SecurityFilterChain
import org.springframework.security.web.header.writers.StaticHeadersWriter
import org.springframework.security.web.header.writers.XXssProtectionHeaderWriter
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter

@Configuration
class SecurityConfig {

    @Bean
    fun securityFilterChain(http: HttpSecurity): SecurityFilterChain {
        http
            // CSRF: enabled by default, disable only for stateless APIs (JWT)
            // For session-based auth, keep CSRF enabled
            .csrf { csrf -> csrf.disable() } // TODO: Enable when using session auth
            .authorizeHttpRequests { auth ->
                auth.requestMatchers("/v1/basakhuji/locations/**").permitAll()
                auth.requestMatchers("/actuator/health", "/actuator/info").permitAll()
                auth.anyRequest().authenticated()
            }
            // Security headers
            .headers { headers ->
                headers
                    .contentSecurityPolicy { csp ->
                        csp.policyDirectives("default-src 'self'; script-src 'self'; style-src 'self' 'unsafe-inline'")
                    }
                    .xssProtection { xss -> xss.headerValue(XXssProtectionHeaderWriter.HeaderValue.ENABLED_MODE_BLOCK) }
                    .frameOptions { frame -> frame.sameOrigin() }
                    .referrerPolicy { referrer -> referrer.policy(org.springframework.security.web.header.writers.ReferrerPolicyHeaderWriter.ReferrerPolicy.STRICT_ORIGIN_WHEN_CROSS_ORIGIN) }
                    .httpStrictTransportSecurity { hsts ->
                        hsts.includeSubDomains(true).maxAgeInSeconds(31536000).preload(true)
                    }
            }

        return http.build()
    }
}