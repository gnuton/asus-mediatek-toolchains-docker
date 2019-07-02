![Docker Pulls](https://img.shields.io/docker/pulls/gnuton/asus-mediatek-toolchains-docker.svg)

# Asus Mediatek Toolchains in a Docker container
This repository contains Mediatek toolchains needed to build [ASUS DSL-N firmware](https://github.com/gnuton/asus-mediatek-fw).

## Quick start
This docker image can be used to build mediatek based firware on the cloud on your local machine
### Local 
```bash
cd firmware_src_dir
docker run -it -v $PWD:/build gnuton/asus-mediatek-toolchains-docker:latest /bin/bash
```
### Cloud: CircleCI pipeline
An example of CircleCi pipeline can be found [here](https://github.com/gnuton/asus-mediatek-fw/blob/mainline/.circleci/config.yml).

## Build
In case you wanna make changes to the docker container itself, issues or PRs are welcome.
If you make changes to to Dockerfile you can build it with a simple:
```bash
docker build .
```
