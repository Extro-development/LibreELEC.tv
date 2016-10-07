################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2016 Team LibreELEC
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################
PKG_NAME="u-boot-env"
PKG_VERSION="2016.09"
PKG_SITE=""
PKG_URL="ftp://ftp.denx.de/pub/u-boot/u-boot-$PKG_VERSION.tar.bz2"
PKG_SOURCE_DIR="u-boot-$PKG_VERSION"
PKG_DEPENDS_TARGET="toolchain"
PKG_REV="1"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SECTION="tools"
PKG_SHORTDESC="u-boot: Universal Bootloader project"
PKG_LONGDESC="Das U-Boot is a cross-platform bootloader for embedded systems, used as the default boot loader by several board vendors. It is intended to be easy to port and to debug, and runs on many supported architectures, including PPC, ARM, MIPS, x86, m68k, NIOS, and Microblaze."
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_configure_target() {
# u-boot-env fails to build in subdirs
  rm -rf $ROOT/$PKG_BUILD/.$HOST_NAME
}

make_target() {
	make -C $ROOT/$PKG_BUILD/ defconfig
    make CROSS_COMPILE="$TARGET_PREFIX" CFLAGS="" LDFLAGS="" -C $ROOT/$PKG_BUILD/ env
}

makeinstall_target() {
	mkdir -p $INSTALL/usr/bin
	cp -rf $ROOT/$PKG_BUILD/tools/env/fw_printenv $INSTALL/usr/bin/
	ln -rsf $INSTALL/usr/bin/fw_printenv $INSTALL/usr/bin/fw_setenv
}
