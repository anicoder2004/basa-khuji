package com.anisoft.basa_khuji.service

import com.anisoft.basa_khuji.model.AuditLog
import com.anisoft.basa_khuji.repo.AuditLogRepository
import com.fasterxml.jackson.databind.ObjectMapper
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Propagation
import org.springframework.transaction.annotation.Transactional

@Service
class AuditService(
    private val auditLogRepository: AuditLogRepository,
    private val objectMapper: ObjectMapper
) {

    private val log = LoggerFactory.getLogger(javaClass)

    @Transactional(propagation = Propagation.REQUIRES_NEW)
    fun log(
        userId: String,
        action: String,
        entityType: String? = null,
        entityId: Long? = null,
        details: Any? = null,
        ipAddress: String? = null,
        userAgent: String? = null
    ) {
        try {
            val detailsJson = details?.let {
                objectMapper.writeValueAsString(it)
            }

            val auditLog = AuditLog(
                userId = userId,
                action = action,
                entityType = entityType,
                entityId = entityId,
                details = detailsJson,
                ipAddress = ipAddress,
                userAgent = userAgent
            )

            auditLogRepository.save(auditLog)
        } catch (e: Exception) {
            log.error("Failed to save audit log: ${e.message}")
        }
    }

    fun getAuditLogsForUser(userId: String): List<AuditLog> =
        auditLogRepository.findByUserIdOrderByCreatedAtDesc(userId)

    fun getAuditLogsForEntity(entityType: String, entityId: Long): List<AuditLog> =
        auditLogRepository.findByEntityTypeAndEntityIdOrderByCreatedAtDesc(entityType, entityId)
}
