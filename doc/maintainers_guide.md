# Maintainer's Guide

## Porting new changes from HighlightJS

```bash
./gradlew :port
```

## Precommit

```bash
./gradlew precommit
```

## Bumping version

The major version of the package must be bumped on any changes that are breaking
to the Dart client programs.

If HighlightJS itself updates the major version, but our porting tool and Dart code
dampen that into a non-breaking change, we should not bump our major version.

The version of HighlightJS must be added to the Dart version after `+`.
For instance, `0.9.0+11.8.0`.

In everything else, we follow [the pub.dev's flavor of Semver](https://dart.dev/tools/pub/versioning#semantic-versions).

When a package is released, add a tag with the version number prepended with `v`.
For instance, `v0.9.0+11.8.0`.
