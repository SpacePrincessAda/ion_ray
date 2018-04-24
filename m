#!/bin/sh

CXX="clang"
ION_PKG="src"

mkdir -p build
ion $ION_PKG "build/main.c"

$CXX build/main.c -O2 -o "build/ray"

