maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=lazygit
version=0.40.2
release=1
desc="simple terminal UI for git commands"
homepage="https://github.com/jesseduffield/lazygit"
architectures=("amd64")
licenses=("MIT")

#build_deps=("go-bin")

sources=("https://github.com/jesseduffield/lazygit/releases/download/v${version}/lazygit_${version}_Linux_x86_64.tar.gz")
checksums=('SKIP')

package() {
	cd "$srcdir/lazygit_${version}_Linux_x86_64"
	install-binary lazygit
}
