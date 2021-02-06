# liano.build

liano build tools in docker.

# User Guide

For convenience, I've built a docker [efikarl/ovmf.build](https://hub.docker.com/r/efikarl/ovmf.build) for [liano](https://github.com/efikarl/liano.git) build.

```shell
# 1st, ensure you have a id for access https://hub.docker.com
docker pull efikarl/ovmf.build

# Clone https://github.com/efikarl/liano.git and cd workspace
git clone https://github.com/efikarl/liano.git && cd liano

# Build OVMF for arch IA32
docker run --rm -v ${PWD}:/ws efikarl/ovmf.build -a IA32

# Build OVMF for arch X64
docker run --rm -v ${PWD}:/ws efikarl/ovmf.build -a X64

# Build OVMF for arch IA32 X64
docker run --rm -v ${PWD}:/ws efikarl/ovmf.build -a IA32 -a X64
```

When building is done, you will find `OVMF.fd` in `Build/Ovmf*/DEBUG_GCC*/FV/OVMF.fd`.
