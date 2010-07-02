AC_CONFIG_MACRO_DIR([m4])

#m4_include([build-aux/lightning.m4])
#m4_include([build-aux/gst-package.m4])
#m4_include([build-aux/gst.m4])

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([build-aux])


AC_INIT([GST-GNU lightning], [0.0])
AM_INIT_AUTOMAKE([foreign subdir-objects])
AC_CONFIG_SRCDIR([configure.ac])
AC_CONFIG_HEADERS([config.h])

LIGHTNING_CONFIGURE_IF_NOT_FOUND([], [])

AM_PATH_GST([3.2])

GST_PACKAGE_ENABLE([Lightning], [gst-lightning])

AC_PROG_CC
AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([gst], [chmod +x gst])

AC_PROG_LIBTOOL
AC_SUBST(LIBTOOL_DEPS)

AC_OUTPUT

