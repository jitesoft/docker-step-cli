# Step - CLI

[![Docker Pulls](https://img.shields.io/docker/pulls/jitesoft/step-cli.svg)](https://hub.docker.com/r/jitesoft/step-cli)
[![Back project](https://img.shields.io/badge/Open%20Collective-Tip%20the%20devs!-blue.svg)](https://opencollective.com/jitesoft-open-source)

This docker image contains [smallsteps](https://smallstep.com/) [Step CLI](https://github.com/smallstep/cli).  

## Tags

All images are built from source for ARM64, ARMv7 and AMD64.  
The tags are based on latest version at build time (0.15.0 as of writing this document) 
which makes the tags change more often than this README.    
`latest` always refers to the latest version, that is, the latest tag. Stable always uses the latest release.  
That is, latest might contain rc, alpha and beta versions, while stable will always be the latest full release.

Images can be found at:

* [Docker hub](https://hub.docker.com/r/jitesoft/step-cli): `jitesoft/step-cli`  
* [GitLab](https://gitlab.com/jitesoft/dockerfiles/step-cli): `registry.gitlab.com/jitesoft/dockerfiles/step-cli`
* [GitHub](https://github.com/orgs/jitesoft/packages/container/package/step-cli): `ghcr.io/jitesoft/step-cli`
  
## Dockerfile

Dockerfile can be found at [GitLab](https://gitlab.com/jitesoft/dockerfiles/step-cli) or [GitHub](https://github.com/jitesoft/docker-step-cli).

### Image labels

This image follows the [Jitesoft image label specification 1.0.0](https://gitlab.com/snippets/1866155).

## Licenses

Files in this repository are released under the [MIT license](https://gitlab.com/jitesoft/dockerfiles/step-cli/-/blob/master/LICENSE).  
Step CLI is released under the [Apache License 2.0](https://github.com/smallstep/cli/blob/master/LICENSE).
