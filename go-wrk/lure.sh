maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=go-wrk
version=1.0
release=1
desc="a HTTP benchmarking tool based in spirit on the excellent wrk tool "
homepage="https://github.com/tsliwowicz/go-wrk"
architectures=("all")
licenses=("Apache-2.0")

#build_deps=("go-bin")
sources=("git+https://github.com/tsliwowicz/go-wrk.git")
checksums=('SKIP')


version() {
	cd "$srcdir/$name"
	printf "%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
	cd "$srcdir/$name"
	go build
}

package() {
	cd "$srcdir/$name"
	install-binary go-wrk
}
