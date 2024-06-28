maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=f3
version=8.0
release=2
desc="Simple tool that tests flash cards capacity and performance to see if they live up to claimed specifications"
homepage="https://github.com/AltraMayor/f3"
architectures=('amd64' 'armv7h' 'aarch64')
licenses=('GPLv3')

#conflicts=("")
deps=('parted')
build_deps=('systemd')
#opt_deps=()

sources=("git+https://github.com/AltraMayor/f3.git?~rev=v$version")
checksums=("SKIP")


build() {
  cd "$srcdir/$name"
  make
  make extra
}

package() {
  cd "$srcdir/$name"
  make DESTDIR="${pkgdir}" PREFIX='/usr' install
  make DESTDIR="${pkgdir}" PREFIX='/usr' install-extra

  install -Dvm644 "${srcdir}/${name}/README.rst" -t "${pkgdir}/usr/share/doc/${name}"
}
