maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=scc
version=3.3.4
release=1
desc="Sloc, Cloc and Code: scc is a very fast accurate code counter with complexity calculations and COCOMO estimates written in pure Go"
homepage="https://github.com/boyter/scc"
architectures=("all")
licenses=("MIT")

#build_deps=("go-bin")

sources=("git+https://github.com/boyter/scc.git?~rev=v$version")
checksums=('SKIP')

build() {
	cd "$srcdir/$name"
	go build
}

package() {
	cd "$srcdir/$name"
	install-binary scc
}
