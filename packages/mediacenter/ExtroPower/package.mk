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

PKG_NAME="ExtroPower"
PKG_VERSION="345cd4b"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL="https://github.com/Extro-development/plugin.program.extropower/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="plugin.program.extropower-$PKG_VERSION*"
PKG_DEPENDS_TARGET="toolchain Python ExtroCore"
PKG_SECTION=""
PKG_SHORTDESC="ExtroPower: Advanced power options for Extro devices"
PKG_LONGDESC="ExtroPower: Contains advanced power options for Extro devices as program addon"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="DISTRONAME=$DISTRONAME ROOT_PASSWORD=$ROOT_PASSWORD"

if [ "$DISPLAYSERVER" = "x11" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET setxkbmap"
else
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET bkeymaps"
fi
