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
    mkdir -p "$pkgdir/usr/local/kmd"
	cd "KMD-$pkgver"
}

build() {
	cd "KMD-$pkgver"
	./configure --prefix=/usr/local/kmd --build=i386
	make

cat << EOS > kmd_run
#!/bin/sh
KMD_DIR=/usr/local/kmd
CURR_DIR=\$(pwd)
cd "\$KMD_DIR"
./kmd -e jimulator
cd "\$CURR_DIR"
EOS
}

package() {
	cd "KMD-$pkgver"
    install -Dm755 kmd_run "$pkgdir/usr/bin/kmd"
	make DESTDIR="$pkgdir" install
    mv "$pkgdir/usr/local/kmd/bin/kmd" "$pkgdir/usr/local/kmd/"
    mv "$pkgdir/usr/local/kmd/bin/jimulator" "$pkgdir/usr/local/kmd/"
    mv "$pkgdir/usr/local/kmd/bin/flash" "$pkgdir/usr/local/kmd/"
    rm -rf "$pkgdir/usr/local/kmd/bin"
}
