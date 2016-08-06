#!/bin/bash

set -e

# Argument Parsing
MAKEFILE_DIR=`pwd`
cd ..
PREFIX=`pwd`/install
LLVM_SRC_DIR=`pwd`/llvm
BUILD_DIR=`pwd`/build
cd ${MAKEFILE_DIR}

VERSION="3.6"


for i in "$@"
do
    case $i in
	--src-dir=*)
	LLVM_SRC_DIR="${i#*=}"
	shift
	;;
	--build-dir=*)
	BUILD_DIR="${i#*=}"
	shift
	;;
	--prefix=*)
	PREFIX="${i#*=}"
	shift
	;;
	-q)
	    QUIET=true
	    shift
	    ;;
	--llvm-version=*)
	VERSION="${i#*=}"
	shift
	;;
	--procs=*)
	PROCS="${i#*=}"
	shift
	;;
	*)
	    echo "Usage: ./install.sh [--prefix=PREFIX[/usr] [--llvm-version=VERSION[3.7]] [-q]"
	    exit
	    ;;
    esac
done


# Get the number of cores to speed up make process
echo "${PROCS}"
if [ -z "${PROCS}" ]; then
    if [ "$(uname)" == "Darwin" ]; then
	PROCS=$(sysctl -a | grep machdep.cpu | grep core_count | awk -F " " '{ print $2 }')
    else
	if ! type "nproc" > /dev/null; then
	    PROCS=$(nprocs)
	else
	    PROCS=$(cat /proc/cpuinfo | awk '/^processor/{print $3}' | tail -1)
	    PROCS=`expr $PROCS + 1`
	fi
    fi
fi


# Set command verbosity
if [ -n "${QUIET}" ]; then
    WGET="wget --quiet "
    TAR="tar -xf "
    MAKEFLAGS="--quiet -j${PROCS} "
else
    WGET="wget "
    TAR="tar -xvf "
    MAKEFLAGS="-j${PROCS} "
fi


# Auto config color printing
if [ "$(uname)" == "Linux" ]; then
    ESCAPE="\e"
else
    ESCAPE="\x1B"
fi


# Color printing
GREEN=$ESCAPE'[0;32m'
RED=$ESCAPE'[0;31m'
NC=$ESCAPE'[0m'
echog() { echo -e "\n${GREEN}$1${NC}"; }
echor() { echo -e "\n${RED}$1${NC}"; }


# Set LLVM version
if [ "${VERSION}" == "3.2" ]; then
    LLVM_TAR="http://llvm.org/releases/3.2/llvm-3.2.src.tar.gz"
    CLANG_TAR="http://llvm.org/releases/3.2/clang-3.2.src.tar.gz"
    RT_TAR="http://llvm.org/releases/3.2/compiler-rt-3.2.src.tar.gz"
elif [ "${VERSION}" == "3.3" ]; then
    LLVM_TAR="http://llvm.org/releases/3.3/llvm-3.3.src.tar.gz"
    CLANG_TAR="http://llvm.org/releases/3.3/cfe-3.3.src.tar.gz"
    RT_TAR="http://llvm.org/releases/3.3/compiler-rt-3.3.src.tar.gz"
elif [ "${VERSION}" == "3.4" ]; then
    LLVM_TAR="http://llvm.org/releases/3.4/llvm-3.4.src.tar.gz"
    CLANG_TAR="http://llvm.org/releases/3.4/clang-3.4.src.tar.gz"
    RT_TAR="http://llvm.org/releases/3.4/compiler-rt-3.4.src.tar.gz"
elif [ "${VERSION}" == "3.4.1" ]; then
    LLVM_TAR="http://llvm.org/releases/3.4.1/llvm-3.4.1.src.tar.gz"
    CLANG_TAR="http://llvm.org/releases/3.4.1/cfe-3.4.1.src.tar.gz"
    RT_TAR="http://llvm.org/releases/3.4/compiler-rt-3.4.src.tar.gz"
elif [ "${VERSION}" == "3.4.2" ]; then
    LLVM_TAR="http://llvm.org/releases/3.4.2/llvm-3.4.2.src.tar.gz"
    CLANG_TAR="http://llvm.org/releases/3.4.2/cfe-3.4.2.src.tar.gz"
    RT_TAR="http://llvm.org/releases/3.4/compiler-rt-3.4.src.tar.gz"
elif [ "${VERSION}" == "3.5" ]; then
    USE_CMAKE=true
    LLVM_TAR="http://llvm.org/releases/3.5.0/llvm-3.5.0.src.tar.xz"
    CLANG_TAR="http://llvm.org/releases/3.5.0/cfe-3.5.0.src.tar.xz"
    RT_TAR="http://llvm.org/releases/3.5.0/compiler-rt-3.5.0.src.tar.xz"
    OPENMP_TAR="http://llvm.org/releases/3.5.0/openmp-3.5.0.src.tar.xz"
elif [ "${VERSION}" == "3.5.1" ]; then
    USE_CMAKE=true
    LLVM_TAR="http://llvm.org/releases/3.5.1/llvm-3.5.1.src.tar.xz"
    CLANG_TAR="http://llvm.org/releases/3.5.1/cfe-3.5.1.src.tar.xz"
    RT_TAR="http://llvm.org/releases/3.5.1/compiler-rt-3.5.1.src.tar.xz"
    OPENMP_TAR="http://llvm.org/releases/3.5.1/openmp-3.5.1.src.tar.xz"
elif [ "${VERSION}" == "3.5.2" ]; then
    USE_CMAKE=true
    LLVM_TAR="http://llvm.org/releases/3.5.2/llvm-3.5.2.src.tar.xz"
    CLANG_TAR="http://llvm.org/releases/3.5.2/cfe-3.5.2.src.tar.xz"
    RT_TAR="http://llvm.org/releases/3.5.2/compiler-rt-3.5.2.src.tar.xz"
    OPENMP_TAR="http://llvm.org/releases/3.5.2/openmp-3.5.2.src.tar.xz"
elif [ "${VERSION}" == "3.6" ]; then
    USE_CMAKE=true
    LLVM_TAR="http://llvm.org/releases/3.6.0/llvm-3.6.0.src.tar.xz"
    CLANG_TAR="http://llvm.org/releases/3.6.0/cfe-3.6.0.src.tar.xz"
    RT_TAR="http://llvm.org/releases/3.6.0/compiler-rt-3.6.0.src.tar.xz"
    OPENMP_TAR="http://llvm.org/releases/3.6.0/openmp-3.6.0.src.tar.xz"
elif [ "${VERSION}" == "3.6.1" ]; then
    LLVM_TAR="http://llvm.org/releases/3.6.1/llvm-3.6.1.src.tar.xz"
    CLANG_TAR="http://llvm.org/releases/3.6.1/cfe-3.6.1.src.tar.xz"
    RT_TAR="http://llvm.org/releases/3.6.1/compiler-rt-3.6.1.src.tar.xz"
    OPENMP_TAR="http://llvm.org/releases/3.6.1/openmp-3.6.1.src.tar.xz"
elif [ "${VERSION}" == "3.6.2" ]; then
    USE_CMAKE=true
    LLVM_TAR="http://llvm.org/releases/3.6.2/llvm-3.6.2.src.tar.xz"
    CLANG_TAR="http://llvm.org/releases/3.6.2/cfe-3.6.2.src.tar.xz"
    RT_TAR="http://llvm.org/releases/3.6.2/compiler-rt-3.6.2.src.tar.xz"
    OPENMP_TAR="http://llvm.org/releases/3.6.2/openmp-3.6.2.src.tar.xz"
elif [ "${VERSION}" == "3.7" ]; then
    USE_CMAKE=true
    LLVM_TAR="http://llvm.org/releases/3.7.0/llvm-3.7.0.src.tar.xz"
    CLANG_TAR="http://llvm.org/releases/3.7.0/cfe-3.7.0.src.tar.xz"
    RT_TAR="http://llvm.org/releases/3.7.0/compiler-rt-3.7.0.src.tar.xz"
    OPENMP_TAR="http://llvm.org/releases/3.7.0/openmp-3.7.0.src.tar.xz"
elif [ "${VERSION}" == "3.7.1" ]; then
    USE_CMAKE=true
    LLVM_TAR="http://llvm.org/releases/3.7.1/llvm-3.7.1.src.tar.xz"
    CLANG_TAR="http://llvm.org/releases/3.7.1/cfe-3.7.1.src.tar.xz"
    RT_TAR="http://llvm.org/releases/3.7.1/compiler-rt-3.7.1.src.tar.xz"
    OPENMP_TAR="http://llvm.org/releases/3.7.1/openmp-3.7.1.src.tar.xz"
else
    echo
    echor "LLVM verson chosen not yet supported"
    exit -1
fi




echog "LLVM source will be located at [${LLVM_SRC_DIR}]"
if [ -z "${USE_CMAKE}" ] ;then 
    echog "LLVM will be built at [${BUILD_DIR}]"
fi
echog "LLVM will be installed at [${PREFIX}]"


echog "Cleaning old install"
rm -rf ${LLVM_SRC_DIR} ${BUILD_DIR}


echog "Creating LLVM version ${VERSION}"

echog "Downloading LLVM"
mkdir -p  ${LLVM_SRC_DIR}
cd ${LLVM_SRC_DIR}
${WGET} --output-document=llvm.tar.gz ${LLVM_TAR}

echog "Extracting LLVM"
${TAR} llvm.tar.gz -C . --strip-components=1



echog "Downloading Clang"
cd ${LLVM_SRC_DIR}/tools
${WGET} --output-document=clang.tar.gz ${CLANG_TAR}

echog "Extracting Clang"
mkdir clang
${TAR} clang.tar.gz -C clang --strip-components=1



echog "Downloading Compiler-RT"
cd ${LLVM_SRC_DIR}/projects
${WGET} --output-document=compiler-rt.tar.gz ${RT_TAR}

echog "Extracting Compiler-RT"
mkdir compiler-rt
${TAR} compiler-rt.tar.gz -C compiler-rt --strip-components=1



if [ "${OPENMP_TAR}" ]; then
    echog "Downloading OpenMP"
    cd ${LLVM_SRC_DIR}/projects
    ${WGET} --output-document=openmp.tar.gz ${OPENMP_TAR}

    echog "Extracting OpenMP"
    mkdir openmp
    ${TAR} openmp.tar.gz -C openmp --strip-components=1
fi



if [ "${USE_CMAKE}" ]; then

    echog "Copying this git into build location before configuration"
    cd ${LLVM_SRC_DIR}/lib/Transforms
    mkdir -p vulfi
    cp -r ${MAKEFILE_DIR}/lib/* vulfi
    echo "add_subdirectory(vulfi)" >> ${LLVM_SRC_DIR}/lib/Transforms/CMakeLists.txt
fi



echog "Configuring LLVM/Clang"
mkdir -p ${PREFIX}
if [ -n "${USE_CMAKE}" ]; then
    mkdir -p ${BUILD_DIR}
    cd ${BUILD_DIR}
    cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} -DLLVM_TARGETS_TO_BUILD:STRING="host" -DCMAKE_BUILD_TYPE:STRING="RelWithDebInf" ${LLVM_SRC_DIR}
else
    mkdir -p ${LLVM_SRC_DIR}/lib/vulfi
    cd ${LLVM_SRC_DIR}
    ./configure --enable-bindings=none --enable-targets=host --prefix=${PREFIX}
fi

# Save install configs
cd ${MAKEFILE_DIR}
CONFIG_FILE=.install_path
echo "" > ${CONFIG_FILE}
echo "export MAKEFLAGS=\"${MAKEFLAGS}\"" >> ${CONFIG_FILE}
echo "export MAKEFILE_DIR=${MAKEFILE_DIR}" >> ${CONFIG_FILE}
echo "export PREFIX=${PREFIX}" >> ${CONFIG_FILE}
echo "export LLVM_SRC_DIR=${LLVM_SRC_DIR}" >> ${CONFIG_FILE}
echo "export BUILD_DIR=${BUILD_DIR}" >> ${CONFIG_FILE}
echo "export USE_CMAKE=${USE_CMAKE}" >> ${CONFIG_FILE}

./rebuild.sh

echog "vulfi_bash_source.sh contains required modification to enviroment variables"
cd ${MAKEFILE_DIR}
echo > vulfi_bash_source.sh
echo "export PATH=${PREFIX}/bin:\${PATH}" >> vulfi_bash_source.sh
echo "export LIBRARY_PATH=${PREFIX}/lib:\${LIBRARY_PATH}" >> vulfi_bash_source.sh
echo "export VULFI_INSTALL_DIR=${PREFIX}/lib" >> vulfi_bash_source.sh
echo "export VULFI_HOME=${LLVM_SRC_DIR}/lib/vulfi" >> vulfi_bash_source.sh

