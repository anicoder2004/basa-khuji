package com.anisoft.basa_khuji

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class BasaKhujiBackApplication

fun main(args: Array<String>) {
    runApplication<BasaKhujiBackApplication>(*args)
    println("--------------- System Online ------------------")
}
