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

PKG_NAME="tar"
PKG_VERSION="1.29"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.gnu.org/software/tar/"
PKG_URL="http://ftp.gnu.org/gnu/tar/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="attr busybox"
PKG_SECTION="compress"
PKG_SHORTDESC="tar: A GNU archiving program"
PKG_LONGDESC="This is GNU tar, a program to that saves many files together into a single tape or disk archive, and can restore individual files from the archive."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="OPTIMIZER= \
                           CONFIG_SHELL=/bin/bash \
                           INSTALL_USER=root INSTALL_GROUP=root \
                           --with-posix-acls --with-xattrs"

pre_configure_target() {
# tar fails to build in subdirs
  cd $ROOT/$PKG_BUILD
    rm -rf .$TARGET_NAME
}
