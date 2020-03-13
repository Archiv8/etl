# Maintainer: Ross Clark <archiv8@artisteducator.com>
# Contributor: Ross Clark <archiv8@artisteducator.com>

# _langname=""
_relname="synfig"
_partname="etl"
# _cvsname=""

# pkgbase=
pkgname="${_relname}-${_partname}"
pkgver=1.3.12
pkgrel=1
# epoch=
pkgdesc="A multi-platform class and template library that adds new datatypes and functions which combine well with those from the C++ Standard Template Library"
arch=("x86_64")
url="https://www.synfig.org/"
license=("GPL2")
# groups=()
depends=("bash")
# optdepends=()
makedepends=("cmake" "git")
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
"DEPENDENCIES.md"
"DEVELOPER-CERTIFICATE-OF-ORIGIN.md"
"INSTALL.md"
"ISSUES.md"
"LICENSE.md"
"MIT.md"
"OPTIONS.md"
"README.md"
)
# noextract=()
# validpgpkeys=()
sha256sums=('122cb3ea04ec91ef428695c84fc6b42dbdd54641ab75a40705d1d0ea9377a8f1'
            'ef1261bfd3ba5f97c93ae108adef214378a3403e40583e5cd2711db76a1ec55f'
            '7baadf79025fc3a805b2b2482cb2098fd622c85e06f2def5e983639782f2a243'
            '7369b548986558e64d3c604845cf96c2bc58cc05d887a03bf699cd1fbafd51cd'
            '4a7ecc8c3afa6dbdfd44358fe1aed9494bd61427f149f2f85cae8f2595557a42'
            'f1885f92e6cfcbe1ff7f487ba9de58f130e9a7448f2729ac5b5c6f0b721e07c0'
            '06dee73b7922bda9a1e0fcca99947a352ba9e8ec0dab8d8c1b5cf90719440fa0'
            '063660e42a1cc61884498d56291da8ecbe0c681757abc83086cfa7223275f9b5'
            '760be9f70ac46a75ccb64f6d141ca86ae348004f749a2680cbd549712ef66501'
            '29a3af9e047893dbc45dd5d23c22effab400e9f5bdc38983f9288749ec13611e'
            '002a58e22cac6759bc4849f3d00712dc271720b57ba355f37fba18757b2ff613'
            '3b9933c5923988d05782402dfeb1d0007cb681e4c256bee567d1a59e05d746a0'
            '33a722e4727419d600c596a0a8e1ab73d6067ea4011ccaf5b9bfc3b57464c534')

prepare () {

  # Change to the Synfig ETL directory
  cd "${srcdir}/${_relname}-${pkgver}/ETL"

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
  install -Dm 644 "${srcdir}/DEPENDENCIES.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/DEPENDENCIES.md"
  install -Dm 644 "${srcdir}/DEVELOPER-CERTIFICATE-OF-ORIGIN.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/DEVELOPER-CERTIFICATE-OF-ORIGIN.md"
  install -Dm 644 "${srcdir}/INSTALL.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/INSTALL.md"
  install -Dm 644 "${srcdir}/ISSUES.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/ISSUES.md"
  install -Dm 644 "${srcdir}/LICENSE.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/LICENSE.md"
  install -Dm 644 "${srcdir}/MIT.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/MIT.md"
  install -Dm 644 "${srcdir}/OPTIONS.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/OPTIONS.md"
  install -Dm 644 "${srcdir}/README.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/README.md"
}
