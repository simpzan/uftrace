export HOST_TAG=linux-x86_64
export NDK=~/android-ndk-r21e
export CROSS_COMPILE_BIN=$NDK/toolchains/llvm/prebuilt/$HOST_TAG/bin/
export CROSS_COMPILE=${CROSS_COMPILE_BIN}/aarch64-linux-android23-
export CC=${CROSS_COMPILE}clang
export LD=${CROSS_COMPILE_BIN}/aarch64-linux-android-ld
export AR=${CROSS_COMPILE_BIN}/aarch64-linux-android-ar
export ARCH=aarch64
./configure \
    --cross-compile=${CROSS_COMPILE} \
    --arch=$ARCH \
    --prefix=`pwd`/out/$ARCH
make V=1 -j4