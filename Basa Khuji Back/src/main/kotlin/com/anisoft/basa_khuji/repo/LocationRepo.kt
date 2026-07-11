package com.anisoft.basa_khuji.repo

import com.anisoft.basa_khuji.model.Bivag
import com.anisoft.basa_khuji.model.Jela
import com.anisoft.basa_khuji.model.Thana
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface BivagRepository : JpaRepository<Bivag, Int>

@Repository
interface JelaRepository : JpaRepository<Jela, Int> {
    // Looks up details matching the div_id column
    fun findByDivId(divId: Int): List<Jela>
}

@Repository
interface ThanaRepository : JpaRepository<Thana, Int> {
    // Looks up thanas matching the dist_id column
    fun findByDistId(distId: Int): List<Thana>
}

