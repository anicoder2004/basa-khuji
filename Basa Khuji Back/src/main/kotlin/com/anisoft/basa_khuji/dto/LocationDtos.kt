package com.anisoft.basa_khuji.dto

import com.fasterxml.jackson.annotation.JsonProperty

data class BivagDto(
    @JsonProperty("id") val id: Int,
    @JsonProperty("name_en") val nameEn: String,
    @JsonProperty("name_bn") val nameBn: String
)

data class JelaDto(
    @JsonProperty("id") val id: Int,
    @JsonProperty("div_id") val divId: Int,
    @JsonProperty("name_en") val nameEn: String,
    @JsonProperty("name_bn") val nameBn: String
)

data class ThanaDto(
    @JsonProperty("id") val id: Int,
    @JsonProperty("dist_id") val distId: Int,
    @JsonProperty("name_en") val nameEn: String,
    @JsonProperty("name_bn") val nameBn: String
)