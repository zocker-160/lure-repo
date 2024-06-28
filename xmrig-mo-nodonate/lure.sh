maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=xmrig-mo-nodonate
version=6.21.3-mo15
release=1
desc="Monero CPU/GPU miner (MoneroOcean fork)"
homepage="https://github.com/MoneroOcean/xmrig"
architectures=('amd64')
licenses=('GPLv3')

provides=('xmrig-mo-nodonate')
conflicts=('xmrig-mo')

#deps=()
#build_deps=('cmake' 'automake' 'libtool' 'autoconf')
sources=("git+https://github.com/MoneroOcean/xmrig.git?~rev=v$version"
        "local:///donate.patch")

checksums=('SKIP'
           'a4d97761b4196dbeddbef902062654bafc0f49c8f8fa59bd6d2ae703d355c01a')

prepare() {
    # patch donate level to 0
    patch -u -i donate.patch "xmrig/src/donate.h"

    cd "$srcdir/xmrig"

    mkdir -p build
    cd scripts
    # build libuv openssl hwloc statically linked
    ./build_deps.sh
}

build() {
    cd "$srcdir/xmrig/build"
    cmake .. -DXMRIG_DEPS=scripts/deps
    make -j$NPROC
}

package() {
	cd "$srcdir/xmrig/build"
	install-binary xmrig
}
