################################################################################
#      This file is part of LibreELEC - https://LibreELEC.tv
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

PKG_NAME="bcmdhd-sdio-aml"
PKG_REV="1"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SITE="http://openlinux.amlogic.com:8000/download/ARM/wifi/"
PKG_VERSION="8bb6b4d"
PKG_URL="https://github.com/Extro-development/bcmdhd-sdio-aml/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="$PKG_NAME-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain linux wlan-firmware-aml"
PKG_NEED_UNPACK="$LINUX_DEPENDS"
PKG_PRIORITY="optional"
PKG_SECTION="driver"
PKG_SHORTDESC="bcmdhd-sdio-aml: Linux drivers for Ampak Broadcom based WLAN chips used in some devices based on Amlogic SoCs"
PKG_LONGDESC="bcmdhd-sdio-aml: Linux drivers for Ampak Broadcom based WLAN chips used in some devices based on Amlogic SoCs"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  LDFLAGS="" make V=1 \
    -C $(kernel_path) M=$ROOT/$PKG_BUILD \
    ARCH=$TARGET_KERNEL_ARCH \
    CROSS_COMPILE=$TARGET_PREFIX
}

makeinstall_target() {
  mkdir -p $INSTALL/lib/modules/$(get_module_dir)/bcmdhd
  cp *.ko $INSTALL/lib/modules/$(get_module_dir)/bcmdhd
}
