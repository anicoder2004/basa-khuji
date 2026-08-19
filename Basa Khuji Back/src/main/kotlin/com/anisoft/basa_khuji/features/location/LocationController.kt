package com.anisoft.basa_khuji.features.location

import com.anisoft.basa_khuji.features.location.BivagDto
import com.anisoft.basa_khuji.features.location.JelaDto
import com.anisoft.basa_khuji.features.location.ThanaDto
import com.anisoft.basa_khuji.features.location.Bivag
import com.anisoft.basa_khuji.features.location.Jela
import com.anisoft.basa_khuji.features.location.Thana
import com.anisoft.basa_khuji.features.location.BivagRepository
import com.anisoft.basa_khuji.features.location.JelaRepository
import com.anisoft.basa_khuji.features.location.ThanaRepository
import jakarta.validation.constraints.Min
import jakarta.validation.constraints.Positive
import org.springframework.http.ResponseEntity
import org.springframework.validation.annotation.Validated
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/v1/basakhuji/locations")
@Validated
class LocationController(
    private val bivagRepository: BivagRepository,
    private val jelaRepository: JelaRepository,
    private val thanaRepository: ThanaRepository
) {

    @GetMapping("/bivags")
    fun getAllBivags(): ResponseEntity<List<BivagDto>> {
        val bivags = bivagRepository.findAll()
        return ResponseEntity.ok(bivags.map { toBivagDto(it) })
    }

    @GetMapping("/jelas")
    fun getJelasByBivag(
        @RequestParam @Positive @Min(1) divId: Int
    ): ResponseEntity<List<JelaDto>> {
        val jelas = jelaRepository.findByDivId(divId)
        return ResponseEntity.ok(jelas.map { toJelaDto(it) })
    }

    @GetMapping("/thanas")
    fun getThanasByJela(
        @RequestParam @Positive @Min(1) distId: Int
    ): ResponseEntity<List<ThanaDto>> {
        val thanas = thanaRepository.findByDistId(distId)
        return ResponseEntity.ok(thanas.map { toThanaDto(it) })
    }

    private fun toBivagDto(e: Bivag): BivagDto = BivagDto(e.id, e.bivNam, e.bivBnNam)
    private fun toJelaDto(e: Jela): JelaDto = JelaDto(e.id, e.divId, e.jelaNam, e.jelaBnNam)
    private fun toThanaDto(e: Thana): ThanaDto = ThanaDto(e.id, e.distId, e.thanaNam, e.thanaBnNam)
}