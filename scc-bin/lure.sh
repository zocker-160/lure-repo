maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=scc-bin
_name=scc
version=3.3.4
release=1
desc="Sloc, Cloc and Code: scc is a very fast accurate code counter with complexity calculations and COCOMO estimates written in pure Go"
homepage="https://github.com/boyter/scc"
architectures=("amd64")
licenses=("MIT")

sources=("https://github.com/boyter/scc/releases/download/v$version/scc_Linux_x86_64.tar.gz")
checksums=('b3aa98dda0461c159f3e977b0408cba2c3d39aedd875b6e89c8280d0c6a208fb')

package() {
	cd "$srcdir/scc_Linux_x86_64"

	install-binary scc
	install-license LICENSE
}
