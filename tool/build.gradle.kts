tasks.register("precommit") {
    dependsOn("npxTsc")
    dependsOn("format")
}

tasks.register("npxTsc") {
    doLast {
        exec {
            executable("npm")
            args("install")
        }

        exec {
            executable("npx")
            args("tsc")
        }
    }
}

tasks.register("format") {
    doLast {
        exec {
            executable("npx")
            args("prettier", "--write", "src")
        }
    }
}
