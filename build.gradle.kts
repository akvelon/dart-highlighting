tasks.register("port") {
    dependsOn("portLanguages")
    dependsOn("portThemes")
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

tasks.register("portThemes") {
    dependsOn("tool:npxTsc")

    doLast {
        exec {
            executable("node")
            args("flutter-highlight.js")
            workingDir("tool/js")
        }

        exec {
            executable("dart")
            args(
                "format",
                "flutter_highlighting/lib/themes",
                "flutter_highlighting/lib/theme_map.dart"
            )
        }
    }
}
