FROM archlinux

RUN pacman --noconfirm -Syu base-devel llvm clang lld git nasm acpica python3
ENV     WORKSPACE       /ws
WORKDIR ${WORKSPACE}
COPY    entrypoint.sh   /

ENTRYPOINT [ "/entrypoint.sh" ]
