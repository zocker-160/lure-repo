maintainer="zocker_160 <zocker1600 at posteo dot net>"

name=lazygit
version=0.65.1
release=1
desc="simple terminal UI for git commands"
homepage="https://github.com/jesseduffield/lazygit"
architectures=("amd64")
licenses=("MIT")

#build_deps=("go-bin")

sources=("https://github.com/jesseduffield/lazygit/releases/download/v${version}/lazygit_${version}_linux_x86_64.tar.gz")
checksums=('sha256:02beacbcda0fa342e50ae3480ba8147307353af3fb28e1d5f790e02329c201a6')

package() {
	cd "$srcdir"
	install-binary lazygit
}
