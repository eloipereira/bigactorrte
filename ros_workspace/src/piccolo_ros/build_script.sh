#!/bin/bash
./clean.sh
ln -sf /home/pitvant/code_repository/piccolosdk/source/src/ include/piccolosdk_include_dir
ln -sf /home/pitvant/code_repository/artelib/source/src/include/ include/libarte_include_dir
ln -sf /home/pitvant/code_repository/piccolosdk/build/ libs/piccolosdk_lib_dir
ln -sf /home/pitvant/code_repository/artelib/build/ libs/artelib_lib_dir
cmake .
make -j4
