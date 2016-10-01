################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="script.module.pyxbmct"
PKG_VERSION="1.1.7"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://forum.kodi.tv/showthread.php?tid=174859"
PKG_URL="http://mirrors.kodi.tv/addons/krypton/script.module.pyxbmct/$PKG_NAME-$PKG_VERSION.zip"
PKG_DEPENDS_TARGET="Python"
PKG_SECTION=""
PKG_SOURCE_DIR="script.module.pyxbmct"
PKG_SHORTDESC="script.module.pyxbmct"
PKG_LONGDESC="script.module.pyxbmct"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  echo "install:" > $ROOT/$PKG_BUILD/Makefile
  mkdir -p $INSTALL/usr/share/kodi/addons/$PKG_SOURCE_DIR/
  cp -rf $ROOT/$PKG_BUILD/* $INSTALL/usr/share/kodi/addons/$PKG_SOURCE_DIR/

  rm -rf $INSTALL/usr/share/kodi/addons/script.module.pyxbmct/Makefile
  rm -rf $INSTALL/usr/share/kodi/addons/script.module.pyxbmct/Readme.md
}
