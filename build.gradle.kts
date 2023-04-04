tasks.register("port") {
    dependsOn("portLanguages")
}

tasks.register("portLanguages") {
    dependsOn("npxTsc")

    doLast {
        exec {
            executable("node")
            args("highlight.js")
            workingDir("tool/js")
        }

        exec {
            executable("dart")
            args("format", "highlighting/lib/languages")
        }

        exec {
            executable("dart")
            args("format", "highlighting/lib/src/common_modes.dart")
        }
    }
}

tasks.register("npxTsc") {
    doLast {
        exec {
            executable("npm")
            args("install")
            workingDir("tool")
        }

        exec {
            executable("npx")
            args("tsc")
            workingDir("tool")
        }
    }
}
