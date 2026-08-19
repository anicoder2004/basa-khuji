package com.anisoft.basa_khuji.features.location

import jakarta.persistence.*

@Entity
@Table(name = "bivags")
class Bivag(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bivag_id")
    val id: Int = 0,

    @Column(name = "biv_nam")
    val bivNam: String = "",

    @Column(name = "biv_bn_nam")
    val bivBnNam: String = ""
)

@Entity
@Table(name = "jelas")
class Jela(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "jela_id")
    val id: Int = 0,

    @Column(name = "div_id")
    val divId: Int = 0,

    @Column(name = "jela_nam")
    val jelaNam: String = "",

    @Column(name = "jela_bn_nam")
    val jelaBnNam: String = ""
)

@Entity
@Table(name = "thanas")
class Thana(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "thana_id")
    val id: Int = 0,

    @Column(name = "dist_id")
    val distId: Int = 0,

    @Column(name = "thana_nam")
    val thanaNam: String = "",

    @Column(name = "thana_bn_nam")
    val thanaBnNam: String = ""
)

