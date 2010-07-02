

dnl m4_include([build-aux/lightning.m4])
AC_PREREQ(2.63)
AC_INIT([GST-GNU lightning], [0.0])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_SRCDIR([configure.ac])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE([foreign subdir-objects])



LIGHTNING_CONFIGURE_IF_NOT_FOUND([], [])

AM_PATH_GST([3.2])

AC_PROG_CC
AC_CONFIG_FILES([Makefile])
dnl AC_CONFIG_FILES([gst], [chmod +x gst])

AC_PROG_LIBTOOL
AC_SUBST(LIBTOOL_DEPS)

AC_OUTPUT

