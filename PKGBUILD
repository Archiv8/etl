# Maintainer: Ross Clark <archiv8@artisteducator.com>
# Contributor: Ross Clark <archiv8@artisteducator.com>


# _langname=""
_relname="synfig"
_partname="etl"
# _cvsname=""


# pkgbase=
pkgname="${_relname}-${_partname}"
pkgver=1.3.14
pkgrel=1
# epoch=
pkgdesc="A multi-platform class and template library that adds new data types and functions which combine well with those from the C++ Standard Template Library"
arch=("x86_64")
url="https://www.synfig.org/"
license=("GPL2")
# groups=()
depends=("bash")
# optdepends=()
makedepends=("git")
# checkdepends=()
provides=("${pkgname}=${pkgver}")
conflicts=("${pkgname}")
replaces=("${pkgname}")
# backup=()
# options=()
# install=
changelog="CHANGELOG.md"
source=(
"${_relname}-v${pkgver}.tar.gz::https://github.com/${_relname}/${_relname}/archive/v${pkgver}.tar.gz"
"CC-BY-SA-V4.md"
"CHANGELOG.md"
"CODE-OF-CONDUCT.md"
"COMMITS.md"
"CONTRIBUTE.md"
"DEVELOPER-CERTIFICATE.md"
"INSTALL.md"
"ISSUES.md"
"LICENSE.md"
"MIT.md"
"NOTES.md"
"README.md"
"SECURITY.md"
)
# noextract=()
# validpgpkeys=()
sha512sums=('fd2360739b020e4ea3892f4d5a4e6b359172a987749f6182df777586b64d2026e2d7dba6dc5aaf0eb762c83d4ba90cc2df2ecb08def796d912a4bc9c31a1f2e9'
'0ebf96c60cb83fd44bd13658e5dacd4c894a163fc5c654da3f95350a0ebcdc628458167fb4b050717f295c76d1b8cba26e3516d1d30038a43cb8aab354316ca1'
'a9ecc95a903d3509a5f47ceca2b9361daf7bdfcb21ca261a3b3555b0082d81fd96c3252deb0e242a2f85a92b8c16fe20c68ae3b539d419574e936cfe2fe262a1'
'b9178240d4119ceae0aa418496d174f164c549853c063ce732cc5004fc25ae3d7f18bb663504ecf06ec162ab499d1d23b5bb4d22c0abdab2a79b81b6836d5169'
'0b965acd43b90aaa954d49dfcc10e725652e3c157588deb0e30f66236cba89a8aca1f7632d75f2589a333515848258a049ed647c8a886d020cffd1134531250a'
'924084308da6ce67499a14f7f8f81a3630cea320c763142c79cc89886ea789ae78de8e48b0d8f82f5159ac810924748b66f4318e9d5724510322cd609d521b08'
'3cf4d5972b1adddc51c8a2416b3d5be0984d5e97eb1f5d8de6c2f4de23da53c55de5d0c525ac6ac3a0921d8889a1dae5124762d3da6276bca88b5f1bf200c717'
'9658593886d38b8b2f99f1b1c52d77ea80ad6af94cdf2a31905695d2295e974708feffa313645defa432b15e6eb2b5fa0ae39560a58e3518723cb5bfca8fa2f0'
'f1c23eb57445e632b134437cd748e04fa300cf9c6b50d3eaf1ed557a0008868247fc80f5a9dda0b8f9df92b5ef45700a906ff83b1f6005b9708dc4203486ad58'
'328c980f8e3a5da557d72bedab4bc5efad4f1c519c4cf5faecf546446513c243aab852797611ba2f3f65aa1a3630c5175d34ed1e4fe3ff3011f10928405e11fd'
'6ed70e686f6f6e2fffd4b231ebe54474f86124d7573a9e33d166ee7a8a505abe2ee0495708651a45baded445072721de9ccead2fe114f1f7b72bf3d70e90be05'
'3fdac067fb0236d77d6a0e44d737ccdbd5c1a7a255fc9cb3546e7d8c7e713a6c6a014db25e23d39518d12e4e94f52d106a490d8802b514370bf610e1f7e766ee'
'1063174fa0151ec6fc9ca1da15116b3bf752af715ae48aa6bd4c99d0866208907ffd4b0ab789cc5eb1078e14fa23290576d46ff1a06f6e66efd87405deee865c'
'541f382132549e2604f5a0156bf575dda976e9b4dc097ca18397e7cfdd5778e94c227fb018dc6ec2154ebd4890261a3ba9dfc33efc7435f27e453508e41905f1')

prepare () {

  # Change to the Synfig ETL directory
  cd "${srcdir}/${_relname}-${pkgver}/ETL"

  # Bootstrap as not installing using scripts at project root, i.e, ./1-setup-linux-native.sh, 2-build-production.sh
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
  install -Dm 644 "${srcdir}/COMMITS.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/COMMIT-LOG.md"
  install -Dm 644 "${srcdir}/CONTRIBUTE.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/CONTRIBUTE.md"
  install -Dm 644 "${srcdir}/DEVELOPER-CERTIFICATE.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/DEVELOPER-CERTIFICATE.md"
  install -Dm 644 "${srcdir}/INSTALL.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/INSTALL.md"
  install -Dm 644 "${srcdir}/ISSUES.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/ISSUES.md"
  install -Dm 644 "${srcdir}/LICENSE.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/LICENSE.md"
  install -Dm 644 "${srcdir}/MIT.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/MIT.md"
  install -Dm 644 "${srcdir}/NOTES.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/NOTES.md"
  install -Dm 644 "${srcdir}/README.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/README.md"
  install -Dm 644 "${srcdir}/SECURITY.md" "${pkgdir}/usr/share/doc/${pkgname}/packaging/SECURITY.md"
}
