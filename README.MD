# liano.build

liano build tools in docker.

# User Guide

For convenience, I've built a docker [efikarl/liano.build](https://hub.docker.com/r/efikarl/liano.build) for [liano](https://github.com/efikarl/liano.git) build.

## Build OvmfPkg

```shell
# Clone https://github.com/efikarl/liano.git and cd workspace
git clone https://github.com/efikarl/liano.git && cd liano

# How to build?
docker run --rm -v ${PWD}:/ws efikarl/liano.build ovmf [edkii build arguments]

# Example.1: Build OVMF for arch IA32
docker run --rm -v ${PWD}:/ws efikarl/liano.build ovmf -a IA32

# Example.2: Build OVMF for arch X64
docker run --rm -v ${PWD}:/ws efikarl/liano.build ovmf -a X64

# Example.3: Build OVMF for arch IA32 X64
docker run --rm -v ${PWD}:/ws efikarl/liano.build ovmf -a IA32 -a X64
```

When building is done, you will find `OVMF.fd` in `Build/Ovmf*/DEBUG_GCC*/FV/OVMF.fd`.

## Build ShellPkg

```shell
# Clone https://github.com/efikarl/liano.git and cd workspace
git clone https://github.com/efikarl/liano.git && cd liano

# How to build?
docker run --rm -v ${PWD}:/ws efikarl/liano.build shell [edkii build arguments]

# Example.1: Build OVMF for arch IA32
docker run --rm -v ${PWD}:/ws efikarl/liano.build shell -a IA32

# Example.2: Build OVMF for arch X64
docker run --rm -v ${PWD}:/ws efikarl/liano.build shell -a X64

# Example.3: Build OVMF for arch IA32 X64
docker run --rm -v ${PWD}:/ws efikarl/liano.build shell -a IA32 -a X64
```

When building is done, you will find `Shell.efi` in `Build\**\ShellPkg\Application\Shell\Shell\OUTPUT\Shell.efi`.

## Build Environment

```shell
# Clone https://github.com/efikarl/liano.git and cd workspace
git clone https://github.com/efikarl/liano.git && cd liano

# Just to use this build environment
docker run --rm -it -v ${PWD}:/ws efikarl/liano.build
```

