package com.anisoft.basa_khuji.service

import io.github.bucket4j.Bandwidth
import io.github.bucket4j.Bucket
import io.github.bucket4j.Refill
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Service
import java.time.Duration
import java.util.concurrent.ConcurrentHashMap

@Service
class RateLimitingService(
    @Value("\${rate-limiter.capacity:60}") private val capacity: Long,
    @Value("\${rate-limiter.refill-per-minute:30}") private val refillPerMinute: Long
) {

    private val buckets = ConcurrentHashMap<String, Bucket>()

    fun tryConsume(clientIp: String): Boolean {
        val bucket = buckets.computeIfAbsent(clientIp) { _ ->
            val limit = Bandwidth.classic(capacity, Refill.intervally(refillPerMinute, Duration.ofMinutes(1)))
            Bucket.builder().addLimit(limit).build()
        }
        return bucket.tryConsume(1)
    }

    fun getRetryAfterSeconds(clientIp: String): Long {
        val bucket = buckets[clientIp] ?: return 0
        val nanosToWait = bucket.tryConsumeAndReturnRemaining(1).nanosToWaitForRefill
        return if (nanosToWait < 0) 0 else nanosToWait / 1_000_000_000
    }
}
