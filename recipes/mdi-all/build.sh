#!/bin/bash
mkdir build
cd build
# Configure step
cmake -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=ON \
    -DMDI_Fortran=ON \
    -DMDI_Fortran=CXX \
    -DMDI_Fortran=Python \
    ..
# Build step
make -j${CPU_COUNT}
make install
