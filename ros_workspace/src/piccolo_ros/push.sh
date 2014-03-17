#!/bin/bash
MESSAGE=$1
rm -rf CMakeCache.txt CMakeFiles/ Makefile cmake_install.cmake
git add -A && git commit -m "$MESSAGE" && git push -u origin master
