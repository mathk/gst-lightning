AC_CONFIG_MACRO_DIR([m4])

m4_include([build-aux/lightning.m4])

AC_INIT([GST-GNU lightning], [0.0])
AM_INIT_AUTOMAKE([foreign subdir-objects])
AC_CONFIG_SRCDIR([configure.ac])
AC_CONFIG_HEADERS([config.h])

LIGHTNING_CONFIGURE_IF_NOT_FOUND([], [])

AC_PROG_CC
AC_CONFIG_FILES([Makefile])

AC_PROG_LIBTOOL
AC_SUBST(LIBTOOL_DEPS)

AC_OUTPUT

