#!/bin/sh
rm -rf wiibuild
mkdir wiibuild && cd wiibuild

PATH=/opt/devkitpro/tools/bin:/opt/devkitpro/devkitPPC/bin:$PATH
powerpc-eabi-cmake .. -DBUILD_SHARED_LIBS=OFF -DASSIMP_BUILD_TESTS=OFF -DASSIMP_NO_EXPORT=ON -DAI_BUILD_BIG_ENDIAN=ON -DCMAKE_INSTALL_PREFIX=$DEVKITPRO/portlibs/wii
make VERBOSE=1 install

