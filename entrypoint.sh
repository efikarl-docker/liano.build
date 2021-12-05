#!/usr/bin/env bash

if [[ ! -d ${WORKSPACE}/MdePkg ]] || [[ ! -f ${WORKSPACE}/edksetup.sh ]]
then
  echo "[ERR]: not in workspace, run docker with '-v /path/to/edk2/workspace:${WORKSPACE}'!"
  exit 1
fi

args=$@
if [[ -f ${WORKSPACE}/edksetup.sh ]]
then
  set --
  source ${WORKSPACE}/edksetup.sh
  set -- $args
fi

if   [[ $1 == ovmf ]]
then
  set -- bash $WORKSPACE/OvmfPkg/build.sh ${@:2}
  echo $@ && exec $@
elif [[ $1 == qemu ]]
then
  set -- bash $WORKSPACE/OvmfPkg/build.sh ${@:1}
  echo $@ && exec $@
elif [[ $1 == shell ]]
then
  set -- build -p ShellPkg/ShellPkg.dsc ${@:2}
  echo $@ && exec $@
else
  bash
fi
