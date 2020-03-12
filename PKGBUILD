# Maintainer: Ross Clark <archiv8@artisteducator.com>
# Contributor: Ross Clark <archiv8@artisteducator.com>

# _langname=""
_relname="synfig"
_partname="etl"
# _cvsname=""

# pkgbase=
pkgname="${_partname}"
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
            'd15fbde7fb1ddb97bc52e6d2d23da361c9582b8030692bebc6727766a9a117b4'
            '2bce45f638fc47510e979854b61ea0a0d5f3f3caeeab5c7beb8880232c8560dc'
            'e4352b935cf7fefd456c571cf6724efe0e824694d770523e056bb775f8a20f3a'
            '17c68c0efaca0bd675b4663940a8e25ae083d12728c74e016b06a6b7f37b1a9d'
            '64cbbcc428303bd68225765f9be5b0ca7ad301ebe1c8fa2c39cefece1868a28e'
            '06dee73b7922bda9a1e0fcca99947a352ba9e8ec0dab8d8c1b5cf90719440fa0'
            'dbe381b0468a1b4d74a246970652dc65e841fda4ea4a9d134a7b839324363b07'
            'd461fb8cef3e000e54b234db2e18c8ffe17b76ead66233661e938bf5aeef5430'
            '29a3af9e047893dbc45dd5d23c22effab400e9f5bdc38983f9288749ec13611e'
            'e1acb36a666a96b2c651213691d5cc1f1f4aa011c729625553554be341596c0c'
            '9a041d8ad3a1fd89f87418350fb11e095eae70fed33069bcb57e713b39eb4557'
            '4181d0bd7df6c1e360a7efae3db34f93fdfbc0aa3a051d98dceab837207be35b')

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
