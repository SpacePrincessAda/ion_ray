#!/bin/sh

CXX="clang"
SRC="src/"
ENTRY="main"

SRC_FILE=$SRC$ENTRY.ion
C_FILE=$SRC$ENTRY.c

ion $SRC_FILE

mkdir -p build
mv $C_FILE build/

$CXX build/$ENTRY.c -O2 -o "build/app"

