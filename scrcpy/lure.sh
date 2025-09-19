maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=scrcpy
version=3.3.2
release=1
desc="Display and control your Android device"
homepage="https://github.com/Genymobile/scrcpy"
architectures=("amd64")
licenses=("Apache-2.0")

deps=("ffmpeg")

sources=("https://github.com/Genymobile/scrcpy/releases/download/v${version}/scrcpy-linux-x86_64-v${version}.tar.gz")
checksums=('92bed0fa274b9165eb8740e07cf2e2692ebe09ad6911175b0ee42e08799dc51c')

package() {
	cd "${srcdir}/scrcpy-linux-x86_64-v${version}"

	mkdir -p ${pkgdir}/usr/bin/
	mkdir -p ${pkgdir}/opt/${name}
	cp -r * ${pkgdir}/opt/${name}

	ln -sr ${pkgdir}/opt/${name}/scrcpy ${pkgdir}/usr/bin/${name}
	#install-binary scrcpy
}
