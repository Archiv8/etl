#!/bin/bash

# Based on the original package by Popolon <popolon@popolon.org>, Piernov <piernov@piernov.org>, Sergej Pupykin <pupykin.s+arch@gmail.com> and Franco Iacomella <yaco@gnu.org>

# Disable various shellcheck rules that produce false positives in this file.
# Repository rules should be added to the .shellcheckrc file located in the
# repository root directory, see https://github.com/koalaman/shellcheck/wiki
# and https://archiv8.github.io for further information.
# shellcheck disable=SC2034,SC2154
# [ToDo]: Add files: User documentation
# [ToDo]: Add files: Tooling
# [FixMe]: Namcap warnings and errors

# Maintainer: Ross Clark <https://github.com/Archiv8/etl/discussions>
# Contributor: Ross Clark <https://github.com/Archiv8/etl/discussions>

_relname="synfig"

pkgname="etl"
pkgver=1.5.1
pkgrel=2
pkgdesc="VoriaETL: C++ STL complementory multiplatform template library"
arch=(
  "x86_64"
  "armv7h"
  "armv8"
  "riscv32"
  "riscv64"
)
url="http://synfig.org"
license=(
  "GPL2"
)
depends=(
  "sh"
)
makedepends=("glibmm")
conflicts=(
  "synfig-etl"
  "etl")
replaces=(
  "synfig-etl"
)
provides=(
  "etl"
)
source=(
  "${_relname}-${pkgver}.tar.gz"::"https://github.com/synfig/synfig/archive/v$pkgver.tar.gz"
)
sha512sums=(
  "0c1dd53a445f037bcdb742d7c17d1d3a2039e80d3e49f5cd67119fb9792d96b47154874d5be42d36443b0d09c61b7864dfe33ebd5f3998783c54eb3cc936d11b"
)

prepare() {

  cd "${srcdir}"/${_relname}-${pkgver}/ETL

  autoreconf -fi
}

build() {

  cd "${srcdir}"/${_relname}-${pkgver}/ETL

  ./configure --prefix=/usr

  make
}

package() {

  cd "${srcdir}"/${_relname}-${pkgver}/ETL

  make DESTDIR="${pkgdir}" install
}
