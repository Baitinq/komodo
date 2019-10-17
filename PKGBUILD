# Maintainer: Emati Mitame <aur@mita.me>
pkgname=kmd
pkgver=1.5.0
pkgrel=1
pkgdesc="Komodo Manchester Debugger"
arch=('i386' 'x86_64')
url="http://brej.org/kmd/"
license=('GPL')
depends=('gtk>=1.2.0' 'glib>=1.2.0')
makedepends=()

provides=('kmd')
conflicts=()

source=("https://studentnet.cs.manchester.ac.uk/resources/software/komodo/kmd.tar.gz")

md5sums=(
  'SKIP'
)

prepare() {
	cd "KMD-$pkgver"
}

build() {
	cd "KMD-$pkgver"
	./configure --prefix=/usr --build=i386
	make
}

package() {
	cd "KMD-$pkgver"
	make DESTDIR="$pkgdir/" install
}
