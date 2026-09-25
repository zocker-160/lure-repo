maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=geekbench
version=7.1.0
release=1
desc="A cross-platform benchmark that measures processor and memory performance"
homepage="https://www.geekbench.com/"
architectures=("amd64")
licenses=("custom")

deps=("zlib1g" "libgcc-s1")

sources=("https://cdn.geekbench.com/Geekbench-${version}-Linux.tar.gz")
checksums=('sha256:411b72a9c851b69e6f91d390649d419e2e625f475e3983880169651ca27a8672')

package() {
	cd "$srcdir/Geekbench-${version}-Linux"

	mkdir -p "${pkgdir}/usr/bin"
	mkdir -p "${pkgdir}/opt/${name}"

	cp -r geekbench7 geekbench_avx2 geekbench_x86_64 libtensorrt_rtx.so \
		geekbench.plxr geekbench-workload.plxr "${pkgdir}/opt/${name}"

	ln -sr "${pkgdir}/opt/${name}/geekbench7" "${pkgdir}/usr/bin/${name}"
}
