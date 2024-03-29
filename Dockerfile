FROM rustembedded/cross:armv7-unknown-linux-gnueabihf

RUN dpkg --add-architecture armhf && \
    apt-get update && \
    apt-get install --assume-yes --no-install-recommends \
    libzmq3-dev:armhf \
    pkg-config
ENV PKG_CONFIG_PATH=$SYSROOT/usr/lib/arm-linux-gnueabihf/pkgconfig
