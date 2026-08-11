package com.anisoft.basa_khuji.service

import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Service
import software.amazon.awssdk.services.s3.S3Client
import software.amazon.awssdk.services.s3.model.DeleteObjectRequest
import software.amazon.awssdk.services.s3.model.PutObjectRequest
import software.amazon.awssdk.services.s3.presigner.S3Presigner
import software.amazon.awssdk.services.s3.presigner.model.PutObjectPresignRequest
import java.time.Duration
import java.util.UUID

@Service
class R2Service(
    private val s3Client: S3Client,
    private val presigner: S3Presigner,
    @Value("\${r2.bucket}") private val bucket: String,
    @Value("\${r2.public-base-url}") private val publicBaseUrl: String
) {

    fun generateUploadUrl(
        userId: Long,
        fileName: String,
        contentType: String,
        ttlMinutes: Long = 5
    ): PresignedUploadResponse {
        val key = "properties/${userId}/${UUID.randomUUID()}_$fileName"

        val presignRequest = PutObjectPresignRequest.builder()
            .signatureDuration(Duration.ofMinutes(ttlMinutes))
            .putObjectRequest(
                PutObjectRequest.builder()
                    .bucket(bucket)
                    .key(key)
                    .contentType(contentType)
                    .build()
            )
            .build()

        val presignedRequest = presigner.presignPutObject(presignRequest)

        return PresignedUploadResponse(
            uploadUrl = presignedRequest.url().toString(),
            publicUrl = "$publicBaseUrl/$key",
            key = key
        )
    }

    fun deleteFile(key: String) {
        s3Client.deleteObject(
            DeleteObjectRequest.builder()
                .bucket(bucket)
                .key(key)
                .build()
        )
    }

    fun getPublicUrl(key: String): String {
        return "$publicBaseUrl/$key"
    }
}

data class PresignedUploadResponse(
    val uploadUrl: String,
    val publicUrl: String,
    val key: String
)
