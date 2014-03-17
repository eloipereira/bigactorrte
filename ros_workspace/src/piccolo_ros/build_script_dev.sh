#!/bin/bash
./clean.sh
ln -sf /home/posilva/Sistema/Develop/projectos/PiccoloSDK/project/src/ include/piccolosdk_include_dir
ln -sf /home/posilva/Sistema/Develop/projectos/ARTE/source/src/include/ include/libarte_include_dir
ln -sf /home/posilva/Sistema/Develop/projectos/PiccoloSDK/build/ libs/piccolosdk_lib_dir
ln -sf /home/posilva/Sistema/Develop/projectos/ARTE/build libs/artelib_lib_dir

cmake . && make -j4

