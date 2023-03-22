tasks.register("port") {
    dependsOn("portLanguages")
}

tasks.register("portLanguages") {
    doLast {
        exec {
            executable("npm")
            args("install")
            workingDir("tool")
        }

        exec {
            executable("node")
            args("highlight.js")
            workingDir("tool")
        }

        exec {
            executable("dart")
            args("format", "highlighting/lib/languages")
        }
    }
}
