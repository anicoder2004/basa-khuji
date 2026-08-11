package com.anisoft.basa_khuji.service

import com.google.firebase.messaging.FirebaseMessaging
import com.google.firebase.messaging.Message
import com.google.firebase.messaging.Notification
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class FcmService(
    private val firebaseMessaging: FirebaseMessaging?
) {

    private val log = LoggerFactory.getLogger(javaClass)

    fun sendPushNotification(
        fcmToken: String,
        title: String,
        body: String,
        data: Map<String, String> = emptyMap()
    ) {
        if (firebaseMessaging == null) {
            log.warn("Firebase not initialized — skipping push notification")
            return
        }

        try {
            val message = Message.builder()
                .setToken(fcmToken)
                .setNotification(Notification.builder().setTitle(title).setBody(body).build())
                .putAllData(data)
                .build()

            val response = firebaseMessaging.send(message)
            log.debug("Push sent: $response")
        } catch (e: Exception) {
            log.error("Failed to send push: ${e.message}")
        }
    }

    fun sendToTopic(
        topic: String,
        title: String,
        body: String,
        data: Map<String, String> = emptyMap()
    ) {
        if (firebaseMessaging == null) return

        try {
            val message = Message.builder()
                .setTopic(topic)
                .setNotification(Notification.builder().setTitle(title).setBody(body).build())
                .putAllData(data)
                .build()

            firebaseMessaging.send(message)
        } catch (e: Exception) {
            log.error("Failed to send topic push: ${e.message}")
        }
    }

    fun sendToMultipleTokens(
        tokens: List<String>,
        title: String,
        body: String,
        data: Map<String, String> = emptyMap()
    ) {
        if (firebaseMessaging == null) return

        try {
            val message = Message.builder()
                .setNotification(Notification.builder().setTitle(title).setBody(body).build())
                .putAllData(data)
                .build()

            val response = firebaseMessaging.sendEachForMulticast(
                com.google.firebase.messaging.MulticastMessage.builder()
                    .addAllTokens(tokens)
                    .setNotification(Notification.builder().setTitle(title).setBody(body).build())
                    .putAllData(data)
                    .build()
            )
            log.debug("Multicast push: ${response.successCount} succeeded, ${response.failureCount} failed")
        } catch (e: Exception) {
            log.error("Failed to send multicast push: ${e.message}")
        }
    }
}
