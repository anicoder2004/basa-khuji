package com.anisoft.basa_khuji.config

import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.web.SecurityFilterChain

@Configuration
class SecurityConfig {

    @Bean
    fun securityFilterChain(http: HttpSecurity): SecurityFilterChain {
        http
            .csrf { csrf -> csrf.disable() } // Disables cross-site safety checks for testing
            .authorizeHttpRequests { auth ->
                // This line tells Spring to allow ANYONE to access our location links without logging in
                auth.requestMatchers("/api/basakhuji/locations/**").permitAll()
                // All other requests must be authenticated
                auth.anyRequest().authenticated()
            }

        return http.build()
    }
}