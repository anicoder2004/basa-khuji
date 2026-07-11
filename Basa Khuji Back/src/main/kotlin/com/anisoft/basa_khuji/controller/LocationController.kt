package com.anisoft.basa_khuji.controller

import com.anisoft.basa_khuji.model.Bivag
import com.anisoft.basa_khuji.model.Jela
import com.anisoft.basa_khuji.model.Thana
import com.anisoft.basa_khuji.repo.BivagRepository
import com.anisoft.basa_khuji.repo.JelaRepository
import com.anisoft.basa_khuji.repo.ThanaRepository
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/api/basakhuji/locations")
class LocationController(
    private val bivagRepository: BivagRepository,
    private val jelaRepository: JelaRepository,
    private val thanaRepository: ThanaRepository
) {

    // Hits: GET http://localhost:8080/api/basakhuji/locations/bivags
    @GetMapping("/bivags")
    fun getAllBivags(): List<Bivag> {
        return bivagRepository.findAll()
    }

    // Hits: GET http://localhost:8080/api/basakhuji/locations/jelas?divId=1
    @GetMapping("/jelas")
    fun getJelasByBivag(@RequestParam divId: Int): List<Jela> {
        return jelaRepository.findByDivId(divId)
    }

    // Hits: GET http://localhost:8080/api/basakhuji/locations/thanas?distId=1
    @GetMapping("/thanas")
    fun getThanasByJela(@RequestParam distId: Int): List<Thana> {
        return thanaRepository.findByDistId(distId)
    }
}