FROM efikarl/archlinux

RUN pacman --noconfirm -Syu base-devel git nasm acpica python2
ENV     WORKSPACE       /ws
WORKDIR ${WORKSPACE}
COPY    entrypoint.sh   /

ENTRYPOINT [ "/entrypoint.sh" ]
