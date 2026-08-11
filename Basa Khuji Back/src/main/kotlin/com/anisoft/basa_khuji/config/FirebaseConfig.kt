package com.anisoft.basa_khuji.config

import com.google.auth.oauth2.GoogleCredentials
import com.google.firebase.FirebaseApp
import com.google.firebase.FirebaseOptions
import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.cloud.FirestoreClient
import jakarta.annotation.PostConstruct
import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Value
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import java.io.ByteArrayInputStream

@Configuration
class FirebaseConfig(
    @Value("\${firebase.service-account}") private val serviceAccountJson: String
) {

    private val log = LoggerFactory.getLogger(javaClass)

    @PostConstruct
    fun initialize() {
        if (serviceAccountJson.isBlank()) {
            log.warn("FIREBASE_SERVICE_ACCOUNT not set — Firebase features disabled")
            return
        }

        try {
            ByteArrayInputStream(serviceAccountJson.toByteArray()).use { stream ->
                val options = FirebaseOptions.builder()
                    .setCredentials(GoogleCredentials.fromStream(stream))
                    .build()

                if (FirebaseApp.getApps().isEmpty()) {
                    FirebaseApp.initializeApp(options)
                    log.info("Firebase Admin SDK initialized")
                }
            }
        } catch (e: Exception) {
            log.error("Failed to initialize Firebase Admin SDK: ${e.message}")
        }
    }

    @Bean
    fun firebaseMessaging(): FirebaseMessaging? {
        return try {
            FirebaseMessaging.getInstance()
        } catch (_: Exception) {
            null
        }
    }

    fun firestore() = try {
        FirestoreClient.getFirestore()
    } catch (_: Exception) {
        null
    }
}
