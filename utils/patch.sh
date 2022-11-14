#!/usr/bin/sh

ROOT_DIR=$(cd $(dirname $0); pwd)
PWD=`cd $(dirname $0); pwd -P`
if [ -n "${1}" ];then
    REACT_BUILD_DIR=${1}
else
    REACT_BUILD_DIR="$HOME"
fi

if [ ! -d "${REACT_BUILD_DIR}" ];then
    # This may cause problems on Windows 
    echo "Clone Source directory does not exit, please check !"
    exit 1
else
    echo "*****Start cloning*****"
fi

cd ${REACT_BUILD_DIR}
git clone https://github.com/facebook/react

# Patch build.js
if [ ! -d ${REACT_BUILD_DIR}/scripts/rollup/ ];then
    mkdir -p ${REACT_BUILD_DIR}/scripts/rollup/
fi

cp -f ${ROOT_DIR}/build.js ${REACT_BUILD_DIR}/react/scripts/rollup/


#Build source code

NODE_EX_PATH=`which node`
if [ -z "${NODE_EX_PATH}" ];then
    echo "Please install node first"
    exit 1
fi

npm i -g rollup
cd  ${REACT_BUILD_DIR}/react
node ${REACT_BUILD_DIR}/react/scripts/rollup/build.js