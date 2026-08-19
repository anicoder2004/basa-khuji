package com.anisoft.basa_khuji.shared

import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import java.time.Instant

@Repository
interface AuditLogRepository : JpaRepository<AuditLog, Long> {

    fun findByUserIdOrderByCreatedAtDesc(userId: String): List<AuditLog>

    fun findByUserIdAndCreatedAtBetweenOrderByCreatedAtDesc(
        userId: String,
        from: Instant,
        to: Instant
    ): List<AuditLog>

    fun findByActionOrderByCreatedAtDesc(action: String, pageable: Pageable): Page<AuditLog>

    fun findByEntityTypeAndEntityIdOrderByCreatedAtDesc(
        entityType: String,
        entityId: Long
    ): List<AuditLog>

    fun countByActionAndCreatedAtBetween(action: String, from: Instant, to: Instant): Long
}
