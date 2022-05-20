# 🐋 gitleaks Docker Image

This docker image provides gitleaks for use in CI.

## 🦊 Use in GitLab CI

```
pre-commit:
  stage: test
  image: ghcr.io/wegift/gitleaks:<version>
  script:
    - gitleaks detect --redact --verbose
```

## 🛫 Releasing

To make a new release create a tag with the desired version. We **do not** prefix the version number with `v` as this is the standard within the Docker ecosystem.

```
git tag -am "<description>" X.Y.Z
git push origin X.Y.Z
```

Then [create a release in GitHub](https://github.com/wegift/pre-commit/releases/new) for this tag. CI will then run and publish the version to [GHCR](https://github.com/wegift/pre-commit/pkgs/container/pre-commit).
