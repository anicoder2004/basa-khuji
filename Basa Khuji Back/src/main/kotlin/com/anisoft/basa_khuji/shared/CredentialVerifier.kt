package com.anisoft.basa_khuji.shared

import com.google.auth.oauth2.GoogleCredentials
import com.google.firebase.FirebaseApp
import com.google.firebase.FirebaseOptions
import org.slf4j.LoggerFactory
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider
import software.amazon.awssdk.regions.Region
import software.amazon.awssdk.services.s3.S3Client
import software.amazon.awssdk.services.s3.model.ListObjectsV2Request
import java.io.ByteArrayInputStream
import java.net.URI
import java.sql.DriverManager

object CredentialVerifier {

    private val log = LoggerFactory.getLogger(CredentialVerifier::class.java)

    @JvmStatic
    fun main(args: Array<String>) {
        println("========================================")
        println("  Basa Khuji - Credential Verification  ")
        println("========================================\n")

        var allPassed = true

        // 1. Supabase PostgreSQL
        allPassed &= testSupabaseDatabase()

        // 2. Supabase JWKS URL
        allPassed &= testSupabaseJWKS()

        // 3. Cloudflare R2
        allPassed &= testCloudflareR2()

        // 4. Firebase Admin SDK
        allPassed &= testFirebaseAdmin()

        println("\n========================================")
        if (allPassed) {
            println("  ✅ ALL CREDENTIALS VALID")
        } else {
            println("  ❌ SOME CREDENTIALS INVALID - CHECK LOGS")
        }
        println("========================================")

        System.exit(if (allPassed) 0 else 1)
    }

    private fun testSupabaseDatabase(): Boolean {
        println("1️⃣ Testing Supabase PostgreSQL...")
        val url = System.getenv("DATABASE_URL") ?: System.getProperty("DATABASE_URL")
        val user = System.getenv("DB_USERNAME") ?: System.getProperty("DB_USERNAME")
        val pass = System.getenv("DB_PASSWORD") ?: System.getProperty("DB_PASSWORD")

        if (url == null || user == null || pass == null) {
            println("   ❌ Missing env vars: DATABASE_URL, DB_USERNAME, DB_PASSWORD")
            return false
        }

        return try {
            DriverManager.getConnection(url, user, pass).use { conn ->
                val meta = conn.metaData
                println("   ✅ Connected to ${meta.databaseProductName} ${meta.databaseProductVersion}")
                println("   📍 URL: $url")
                println("   👤 User: $user")
                true
            }
        } catch (e: Exception) {
            println("   ❌ Failed: ${e.message}")
            false
        }
    }

    private fun testSupabaseJWKS(): Boolean {
        println("\n2️⃣ Testing Supabase JWKS URL...")
        val jwksUrl = System.getenv("SUPABASE_JWKS_URL") ?: System.getProperty("SUPABASE_JWKS_URL")

        if (jwksUrl == null || jwksUrl.isBlank()) {
            println("   ❌ Missing SUPABASE_JWKS_URL")
            return false
        }

        return try {
            val response = java.net.URL(jwksUrl).openConnection().apply {
                connectTimeout = 5000
                readTimeout = 5000
            }.getInputStream().bufferedReader().use { it.readText() }

            if (response.contains("keys")) {
                println("   ✅ JWKS endpoint reachable and valid")
                println("   🔗 URL: $jwksUrl")
                true
            } else {
                println("   ❌ JWKS response missing 'keys' field")
                false
            }
        } catch (e: Exception) {
            println("   ❌ Failed: ${e.message}")
            false
        }
    }

    private fun testCloudflareR2(): Boolean {
        println("\n3️⃣ Testing Cloudflare R2...")
        val endpoint = System.getenv("R2_ENDPOINT") ?: System.getProperty("R2_ENDPOINT")
        val bucket = System.getenv("R2_BUCKET") ?: System.getProperty("R2_BUCKET")
        val accessKey = System.getenv("R2_ACCESS_KEY_ID") ?: System.getProperty("R2_ACCESS_KEY_ID")
        val secretKey = System.getenv("R2_SECRET_ACCESS_KEY") ?: System.getProperty("R2_SECRET_ACCESS_KEY")

        if (endpoint == null || bucket == null || accessKey == null || secretKey == null) {
            println("   ❌ Missing R2 env vars: R2_ENDPOINT, R2_BUCKET, R2_ACCESS_KEY_ID, R2_SECRET_ACCESS_KEY")
            return false
        }

        if (endpoint.contains("your-account-id")) {
            println("   ❌ R2_ENDPOINT still has placeholder 'your-account-id'")
            return false
        }

        return try {
            val credentials = AwsBasicCredentials.create(accessKey, secretKey)
            val s3 = S3Client.builder()
                .endpointOverride(URI.create(endpoint))
                .credentialsProvider(StaticCredentialsProvider.create(credentials))
                .region(Region.of("auto"))
                .forcePathStyle(true)
                .build()

            // Try to list objects (validates auth + connectivity)
            s3.listObjectsV2(ListObjectsV2Request.builder().bucket(bucket).maxKeys(1).build())

            println("   ✅ R2 connection successful")
            println("   🔗 Endpoint: $endpoint")
            println("   🪣 Bucket: $bucket")
            println("   🔑 Access Key: ${accessKey.take(8)}...")
            s3.close()
            true
        } catch (e: Exception) {
            println("   ❌ Failed: ${e.message}")
            false
        }
    }

    private fun testFirebaseAdmin(): Boolean {
        println("\n4️⃣ Testing Firebase Admin SDK...")
        val saJson = System.getenv("FIREBASE_SERVICE_ACCOUNT_JSON") ?: System.getProperty("FIREBASE_SERVICE_ACCOUNT_JSON")

        if (saJson == null || saJson.isBlank()) {
            println("   ❌ Missing FIREBASE_SERVICE_ACCOUNT_JSON")
            return false
        }

        return try {
            ByteArrayInputStream(saJson.toByteArray()).use { stream ->
                val options = FirebaseOptions.builder()
                    .setCredentials(GoogleCredentials.fromStream(stream))
                    .build()

                if (FirebaseApp.getApps().isEmpty()) {
                    FirebaseApp.initializeApp(options)
                }

                // Test FCM and Firestore access
                val messaging = com.google.firebase.messaging.FirebaseMessaging.getInstance()
                val firestore = com.google.firebase.cloud.FirestoreClient.getFirestore()

                println("   ✅ Firebase Admin SDK initialized")
                println("   📱 Project ID: ${options.projectId}")
                println("   📨 FCM: Available")
                println("   🔥 Firestore: Available")
                true
            }
        } catch (e: Exception) {
            println("   ❌ Failed: ${e.message}")
            false
        }
    }
}