maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=lazygit
version=0.40.2
release=1
desc="simple terminal UI for git commands"
homepage="https://github.com/jesseduffield/lazygit"
architectures=("all")
licenses=("MIT")

#build_deps=("go-bin")

sources=("git+https://github.com/jesseduffield/lazygit.git?~rev=v$version")
checksums=('SKIP')

build() {
	cd "$srcdir/$name"
	go build
}

package() {
	cd "$srcdir/$name"
	install-binary lazygit
}
