AC_INIT([package], [version])
AM_INIT_AUTOMAKE([foreign subdir-objects])
AC_CONFIG_SRCDIR([configure.ac])
AC_CONFIG_HEADERS([config.h])
AC_CHECK_HEADER(lightning.h, [],  [AC_MSG_ERROR([GNU lightning should be install first])])
AC_PROG_CC
AC_CONFIG_FILES([Makefile])

AC_PROG_LIBTOOL
AC_SUBST(LIBTOOL_DEPS)

AC_OUTPUT

