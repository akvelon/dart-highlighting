tasks.register("port") {
    dependsOn("portLanguages")
}

tasks.register("portLanguages") {
    dependsOn("tool:npxTsc")

    doLast {
        exec {
            executable("node")
            args("highlight.js")
            workingDir("tool/js")
        }

        exec {
            executable("dart")
            args(
                "format",
                "highlighting/lib/languages",
                "highlighting/lib/src/common_modes.g.dart",
                "highlighting/lib/src/languages/mathematica_symbols.g.dart",
            )
        }
    }
}
