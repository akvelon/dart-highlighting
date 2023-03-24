val clonePath = "test/highlight.js";
val tag = "11.7.0"

tasks.register("clean") {
    doLast {
        exec {
            executable("rm")
            args(
                "-rf",
                clonePath,
                "test/errors",
            )
        }
    }
}

tasks.register("precommit") {
    dependsOn("analyze")
    dependsOn("format")
    dependsOn("test")
}

tasks.register("analyze") {
    doLast {
        exec {
            executable("dart")
            args("analyze")
        }
    }
}

tasks.register("format") {
    doLast {
        exec {
            executable("dart")
            args("format", "-o", "none", "--set-exit-if-changed")
        }
    }
}

tasks.register("test") {
    dependsOn("cloneHighlightJs")

    doLast {
        exec {
            executable("dart")
            args("test")
        }
    }
}

tasks.register("cloneHighlightJs") {
    onlyIf {
        !file(clonePath).exists()
    }

    doLast {
        exec {
            executable("git")
            args(
                "clone",
                "https://github.com/highlightjs/highlight.js.git",
                clonePath,
                "-b", tag,
            )
        }
    }
}
