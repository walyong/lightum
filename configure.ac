#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([lightum], [2.3.1], [])
AC_CONFIG_SRCDIR([config.h.in])
AC_CONFIG_HEADERS([config.h])

AC_USE_SYSTEM_EXTENSIONS
AC_SYS_LARGEFILE
AC_PREFIX_DEFAULT([/usr])
AM_INIT_AUTOMAKE([foreign subdir-objects])

LT_PREREQ(2.2)
LT_INIT([disable-static])

AC_CONFIG_MACRO_DIRS([m4])

# Checks for programs.
AC_PROG_CXX
AC_PROG_AWK
AC_PROG_CC
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_RANLIB

# Checks for libraries.

# Checks for header files.
AC_PATH_X
AC_CHECK_HEADERS([fcntl.h stdlib.h string.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T
AC_TYPE_UID_T

# Checks for library functions.
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_CHECK_FUNCS([mkdir strstr])

PKG_CHECK_MODULES([GLIB_2_0], [glib-2.0])
PKG_CHECK_MODULES([GIO_2_0], [gio-2.0])
PKG_CHECK_MODULES([DBUS_1], [dbus-1])
PKG_CHECK_MODULES([LIBSYSTEMD], [libsystemd])
PKG_CHECK_MODULES([X11], [x11])
PKG_CHECK_MODULES([XSCRNSAVER], [xscrnsaver])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
