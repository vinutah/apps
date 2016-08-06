#!/bin/bash

set -e

CONFIG_FILE=.install_path

for i in "$@"
do
    case $i in
	--conf=*)
	CONFIG_FILE="${i#*=}"
	shift
	;;
	*)
	    echo "FIXME"
	    exit
	    ;;
    esac
done


source ${CONFIG_FILE}

# Auto config color printing
if [ "$(uname)" == "Linux" ]; then
    ESCAPE="\e"
else
    ESCAPE="\x1B"
fi


# Color printing
GREEN=${ESCAPE}'[0;32m'
RED=${ESCAPE}'[0;31m'
NC=${ESCAPE}'[0m'
echog() { echo -e "\n${GREEN}$1${NC}"; }
echor() { echo -e "\n${RED}$1${NC}"; }


# Check that required vars are read
if [ -z "${MAKEFLAGS}" -o -z "${MAKEFILE_DIR}" -o -z "${PREFIX}" -o -z "${LLVM_SRC_DIR}" -o -z "${BUILD_DIR}" ]; then
    echor "Original install failed, rerun install.sh"
    exit -1
fi

if [ "${USE_CMAKE}" ]; then

    echog "Copying this git into build location"
    cp -r ${MAKEFILE_DIR}/lib/* ${LLVM_SRC_DIR}/lib/Transforms/vulfi

    echog "Making LLVM/Clang"
    cd ${BUILD_DIR}
    make

    echog "Installing LLVM/CLang to ${LLVM_INSTALL}"
    cd ${BUILD_DIR}
    make install


else

    echog "Copying this git into build location"
    cp -r ${MAKEFILE_DIR}/* ${LLVM_SRC_DIR}/lib/vulfi

    echog "Making LLVM/Clang"
    cd ${LLVM_SRC_DIR}
    make

    echog "Making vulfi"
    cd ${LLVM_SRC_DIR}/lib/vulfi/lib
    make

    echog "Installing LLVM/CLang to ${LLVM_INSTALL}"
    cd ${LLVM_SRC_DIR}
    make install

    echog "Installing vulfi to ${LLVM_INSTALL}"
    cd ${LLVM_SRC_DIR}/lib/vulfi/lib
    make install

fi
