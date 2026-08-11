package com.anisoft.basa_khuji.aspect

@Target(AnnotationTarget.FUNCTION)
@Retention(AnnotationRetention.RUNTIME)
annotation class Auditable(
    val action: String = "",
    val entityType: String = ""
)
