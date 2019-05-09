# asus-mediatek-toolchains-docker
Docker image containing building environemnt for Asus Mediatek firmware

## Build
```bash
docker build .
```

## Usage
```bash
cd firmware_src_dir
docker run -it -v $PWD:/build gnuton/asus-mediatek-toolchains-docker:latest /bin/bash
```
