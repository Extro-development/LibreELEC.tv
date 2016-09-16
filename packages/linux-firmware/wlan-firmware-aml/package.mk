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

PKG_NAME="wlan-firmware-aml"
PKG_VERSION="b74369c"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="Free-to-use"
PKG_SITE="http://openlinux.amlogic.com:8000/download/ARM/wifi/"
PKG_URL="$DISTRO_SRC/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="firmware"
PKG_SHORTDESC="wlan-firmware-aml: Firmware for various WLAN chips used in the devices based on Amlogic SoCs"
PKG_LONGDESC="wlan-firmware-aml: Firmware for various WLAN chips used in the devices based on Amlogic SoCs"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  : # nothing todo
}

makeinstall_target() {
  mkdir -p $INSTALL/lib/firmware/brcm
  # AP6181
  cp -PR bcm_ampak/config/AP6181/Wi-Fi/fw_bcm40181a2*.bin $INSTALL/lib/firmware/brcm
  cp -P bcm_ampak/config/AP6181/Wi-Fi/nvram_ap6181.txt $INSTALL/lib/firmware/brcm/ap6181_nvram.txt
  # AP6210
  cp -PR bcm_ampak/config/AP6210/Wi-Fi/fw_bcm40181a2*.bin $INSTALL/lib/firmware/brcm
  cp -P bcm_ampak/config/AP6210/Wi-Fi/nvram_ap6210.txt $INSTALL/lib/firmware/brcm/ap6210_nvram.txt
  cp -P bcm_ampak/config/AP6210/BT/bcm20710a1.hcd $INSTALL/lib/firmware/brcm
  # AP6212
  cp -PR bcm_ampak/config/6212/fw_bcm43438a0*.bin $INSTALL/lib/firmware/brcm
  cp -P bcm_ampak/config/6212/nvram.txt $INSTALL/lib/firmware/brcm/ap6212_nvram.txt
  cp -P bcm_ampak/config/6212/BT/bcm43438a0.hcd $INSTALL/lib/firmware/brcm
  # AP6330
  cp -PR bcm_ampak/config/AP6330/Wi-Fi/fw_bcm40183b2*.bin $INSTALL/lib/firmware/brcm
  cp -P bcm_ampak/config/AP6330/Wi-Fi/nvram_ap6330.txt $INSTALL/lib/firmware/brcm/ap6330_nvram.txt
  cp -P bcm_ampak/config/AP6330/BT/bcm40183b2.hcd $INSTALL/lib/firmware/brcm
  # AP6335
  cp -PR bcm_ampak/config/6335/fw_bcm4339a0_*.bin $INSTALL/lib/firmware/brcm
  cp -P bcm_ampak/config/6335/nvram.txt $INSTALL/lib/firmware/brcm/ap6335_nvram.txt
  cp -P bcm_ampak/config/6335/BT/bcm4335c0.hcd $INSTALL/lib/firmware/brcm
  # AP6354
  cp -PR bcm_ampak/config/4354/fw_bcm4354a1_*.bin $INSTALL/lib/firmware/brcm
  cp -P bcm_ampak/config/4354/nvram_ap6354.txt $INSTALL/lib/firmware/brcm/ap6354_nvram.txt
  cp -P bcm_ampak/config/4354/bcm4354a1.hcd $INSTALL/lib/firmware/brcm
  # AP6356
  cp -PR bcm_ampak/config/4356/fw_bcm4356a2_*.bin $INSTALL/lib/firmware/brcm
  cp -P bcm_ampak/config/4356/nvram_ap6356.txt $INSTALL/lib/firmware/brcm/ap6356_nvram.txt
  cp -P bcm_ampak/config/4356/bcm4356a2.hcd $INSTALL/lib/firmware/brcm
}
