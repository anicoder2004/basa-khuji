package com.anisoft.basa_khuji.config

import org.springframework.beans.factory.annotation.Value
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider
import software.amazon.awssdk.regions.Region
import software.amazon.awssdk.services.s3.S3Client
import software.amazon.awssdk.services.s3.presigner.S3Presigner
import java.net.URI

@Configuration
class R2Config(
    @Value("\${r2.endpoint}") private val endpoint: String,
    @Value("\${r2.access-key}") private val accessKey: String,
    @Value("\${r2.secret-key}") private val secretKey: String,
    @Value("\${r2.region}") private val region: String
) {

    @Bean
    fun r2S3Client(): S3Client {
        return S3Client.builder()
            .endpointOverride(URI.create(endpoint))
            .credentialsProvider(
                StaticCredentialsProvider.create(AwsBasicCredentials.create(accessKey, secretKey))
            )
            .region(Region.of(region))
            .forcePathStyle(true)
            .build()
    }

    @Bean
    fun r2Presigner(): S3Presigner {
        return S3Presigner.builder()
            .endpointOverride(URI.create(endpoint))
            .credentialsProvider(
                StaticCredentialsProvider.create(AwsBasicCredentials.create(accessKey, secretKey))
            )
            .region(Region.of(region))
            .build()
    }
}
