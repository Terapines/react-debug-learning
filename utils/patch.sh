#!/usr/bin/sh

PWD=`cd $(dirname $0); pwd -P`
if [ -n "${1}" ];then
    REACT_BUILD_DIR=${1}
else
    REACT_BUILD_DIR=${PWD}
fi

if [ ! -d "${REACT_BUILD_DIR}" ];then
    echo "Source directory does not exit, please check !"
else
    echo "*****Start cloning*****"
fi

cd ${REACT_BUILD_DIR}
git clone https://github.com/facebook/react

# Patch build.js
if [ ! -d ${REACT_BUILD_DIR}/scripts/rollup/ ];then
    mkdir -p ${REACT_BUILD_DIR}/scripts/rollup/
fi

cp -f ${PWD}/build.js ${REACT_BUILD_DIR}/scripts/rollup/


#Build source code

NODE_EX_PATH=`which node`
if [ -z "${NODE_EX_PATH}" ];then
    echo "Please install node first"
    exit 1
fi


node scripts/rollup/build.js

