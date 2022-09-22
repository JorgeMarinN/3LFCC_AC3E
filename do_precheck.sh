#!/bin/bash

#set -ex

## Variables de Entorno
## --------------------
##
## Tratar de que todo quede en el mismo directorio de caravel_user_project_analog, por comodidad
## Cosas que son específicas del sistema:
## - Ruta al PDK

export CARAVEL_ROOT="$PWD/caravel"
export PRECHECK_ROOT="$PWD/mpw_precheck"
export OPENLANE_ROOT="$PWD/dependencies/openlane_src"
export MPW_TAG="mpw-7a"
export CARAVEL_LITE=1


export PDK="sky130A"
#export PDK_ROOT="/usr/local/share/pdk"
export PDK_ROOT="$PWD/dependencies/pdk"
export PDKPATH="$PDK_ROOT/$PDK"
export PDK_PATH="$PDK_ROOT/$PDK"

export PATH="$(realpath ~/.local/bin):${PATH}"

#set -ex

## Instalar Caravel
mkdir -p caravel
make install


## Instalar Precheck
if [ ! -d mpw_precheck ]; then
        make precheck
fi

## Instalar el PDK
mkdir -p dependencies/pdk
if [ ! -d dependencies/pdk/sky130A ] ; then
        make pdk-with-volare
fi

make run-precheck
