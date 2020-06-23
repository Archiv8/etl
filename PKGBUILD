# Maintainer: Ross Clark <archiv8@artisteducator.com>
# Contributor: Ross Clark <archiv8@artisteducator.com>


# _langname=""
_relname="synfig"
_partname="etl"
# _cvsname=""


# pkgbase=
pkgname="${_partname}"
pkgver=1.3.14
pkgrel=1
# epoch=
pkgdesc="VoriaETL: A multi-platform class and template library that adds new datatypes and functions which combine well with those from the C++ Standard Template Library"
arch=("x86_64")
url="https://www.synfig.org/"
license=("GPL2")
# groups=()
# depends=()
# optdepends=()
makedepends=("git")
# checkdepends=()
# provides=()
conflicts=("etl")
replaces=("etl")
# backup=()
# options=()
# install=
changelog="CHANGELOG.md"
source=(
"${_relname}-v${pkgver}.tar.gz::https://github.com/${_relname}/${_relname}/archive/v${pkgver}.tar.gz"
"CC-BY-SA-V4.md"
"CHANGELOG.md"
"CODE-OF-CONDUCT.md"
"CONTRIBUTE.md"
"DEVELOPER-CERTIFICATE-OF-ORIGIN.md"
"INSTALL.md"
"ISSUES.md"
"LICENSE.md"
"MIT.md"
"README.md"
)
# noextract=()
# validpgpkeys=()
sha256sums=('f2872c0c1cea9c60f4ddcb36439963b33b3d5cba790d7a800c2923fd0b4ef1cb'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            'cb120ea279d3a411ac532284760d73363f4a979f64d976886e0e32cdac8f6a34'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            '01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            '01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b'
            'ba2734c4a50b303ff6ae64f7b9be9364a8deebc5685cd8db9a2e33266be1614c')

prepare () {

  # Change to the Synfig ETL directory
  cd "${srcdir}/${_pkgname}/${_relname}-${pkgver}/ETL"

  # Bootstrap as not installing via provided scripts.
  ./bootstrap.sh

  # Run configure script
  ./configure \
  --prefix=/usr \
  --sysconfdir=/etc/synfig
}

build() {

  # Change to the Synfig ETL directory
  cd "${srcdir}/${_relname}-${pkgver}/ETL"

  # Run make
  make
}

# check() {}

package() {

  # Change to the Synfig ETL directory
  cd "${srcdir}/${_relname}-${pkgver}/ETL"

  echo This Package Directory $pkgdir

  # Install the Synfig ETL library
  make DESTDIR="${pkgdir}" install

  # Install the Synfig ETL documentation
  install -Dm 644 "${srcdir}/${_relname}-${pkgver}/ETL/NEWS" "${pkgdir}/usr/share/doc/${pkgname}/NEWS"
  install -Dm 644 "${srcdir}/${_relname}-${pkgver}/ETL/NEWS" "${pkgdir}/usr/share/doc/${pkgname}/README"

  # Install the Synfig ETL license
  install -Dm 644 "${srcdir}/${_relname}-${pkgver}/ETL/config/pkg-support/devel-resources/License.rtf" "${pkgdir}/usr/share/licenses/${pkgname}/License.rtf"

  # Create the Archiv8 Documentation folder
  install -dvm 755 "${pkgdir}/usr/share/doc/${pkgname}/packaging/"

  # Install the Archiv8 Documentation
  install -Dm 644 "${srcdir}/CC-BY-SA-V4.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/CC-BY-SA-V4.md"
  install -Dm 644 "${srcdir}/CHANGELOG.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/CHANGELOG.md"
  install -Dm 644 "${srcdir}/CODE-OF-CONDUCT.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/CODE-OF-CONDUCT.md"
  install -Dm 644 "${srcdir}/CONTRIBUTE.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/CONTRIBUTE.md"
  install -Dm 644 "${srcdir}/DEVELOPER-CERTIFICATE-OF-ORIGIN.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/DEVELOPER-CERTIFICATE-OF-ORIGIN.md"
  install -Dm 644 "${srcdir}/INSTALL.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/INSTALL.md"
  install -Dm 644 "${srcdir}/ISSUES.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/ISSUES.md"
  install -Dm 644 "${srcdir}/LICENSE.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/LICENSE.md"
  install -Dm 644 "${srcdir}/MIT.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/MIT.md"
  install -Dm 644 "${srcdir}/README.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/README.md"
}
