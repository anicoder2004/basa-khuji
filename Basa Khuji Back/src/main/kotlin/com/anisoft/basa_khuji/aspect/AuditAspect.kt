package com.anisoft.basa_khuji.aspect

import com.anisoft.basa_khuji.shared.AuditService
import jakarta.servlet.http.HttpServletRequest
import org.aspectj.lang.ProceedingJoinPoint
import org.aspectj.lang.annotation.Around
import org.aspectj.lang.annotation.Aspect
import org.slf4j.LoggerFactory
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.stereotype.Component
import org.springframework.web.context.request.RequestContextHolder
import org.springframework.web.context.request.ServletRequestAttributes

@Aspect
@Component
class AuditAspect(
    private val auditService: AuditService
) {

    private val log = LoggerFactory.getLogger(javaClass)

    @Around("@annotation(auditable)")
    fun auditMethod(joinPoint: ProceedingJoinPoint, auditable: Auditable): Any? {
        val start = System.currentTimeMillis()

        val result = joinPoint.proceed()

        val duration = System.currentTimeMillis() - start

        try {
            val userId = getCurrentUserId()
            if (userId != null) {
                val request = getCurrentRequest()
                auditService.log(
                    userId = userId,
                    action = auditable.action,
                    entityType = auditable.entityType.ifBlank { null },
                    entityId = null,
                    details = mapOf(
                        "method" to joinPoint.signature.name,
                        "duration_ms" to duration,
                        "success" to (result != null)
                    ),
                    ipAddress = request?.getHeader("X-Forwarded-For")?.split(",")?.first()?.trim()
                        ?: request?.remoteAddr,
                    userAgent = request?.getHeader("User-Agent")
                )
            }
        } catch (e: Exception) {
            log.warn("Audit log skipped: ${e.message}")
        }

        return result
    }

    private fun getCurrentUserId(): String? {
        val authentication = SecurityContextHolder.getContext().authentication
        return if (authentication != null && authentication.isAuthenticated) {
            authentication.name
        } else null
    }

    private fun getCurrentRequest(): HttpServletRequest? {
        val attrs = RequestContextHolder.getRequestAttributes()
        return if (attrs is ServletRequestAttributes) attrs.request else null
    }
}
