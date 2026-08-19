package com.anisoft.basa_khuji.shared

import jakarta.persistence.*
import java.time.Instant

@Entity
@Table(name = "audit_logs", indexes = [
    Index(name = "idx_audit_user_id", columnList = "user_id"),
    Index(name = "idx_audit_action", columnList = "action"),
    Index(name = "idx_audit_entity", columnList = "entity_type, entity_id"),
    Index(name = "idx_audit_timestamp", columnList = "created_at")
])
class AuditLog(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "audit_id")
    val id: Long = 0,

    @Column(name = "user_id", nullable = false)
    val userId: String = "",

    @Column(name = "action", nullable = false, length = 50)
    val action: String = "",

    @Column(name = "entity_type", length = 50)
    val entityType: String? = null,

    @Column(name = "entity_id")
    val entityId: Long? = null,

    @Column(name = "details", columnDefinition = "jsonb")
    val details: String? = null,

    @Column(name = "ip_address", length = 45)
    val ipAddress: String? = null,

    @Column(name = "user_agent", length = 500)
    val userAgent: String? = null,

    @Column(name = "created_at", nullable = false, updatable = false)
    val createdAt: Instant = Instant.now()
)
