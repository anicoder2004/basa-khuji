package com.anisoft.basa_khuji.features.location

import com.fasterxml.jackson.annotation.JsonProperty

data class BivagDto(
    @JsonProperty("id") val id: Int,
    @JsonProperty("bivNam") val bivNam: String,
    @JsonProperty("bivBnNam") val bivBnNam: String
)

data class JelaDto(
    @JsonProperty("id") val id: Int,
    @JsonProperty("div_id") val divId: Int,
    @JsonProperty("jelaNam") val jelaNam: String,
    @JsonProperty("jelaBnNam") val jelaBnNam: String
)

data class ThanaDto(
    @JsonProperty("id") val id: Int,
    @JsonProperty("dist_id") val distId: Int,
    @JsonProperty("thanaNam") val thanaNam: String,
    @JsonProperty("thanaBnNam") val thanaBnNam: String
)