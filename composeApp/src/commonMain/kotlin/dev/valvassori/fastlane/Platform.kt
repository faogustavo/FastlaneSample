package dev.valvassori.fastlane

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform