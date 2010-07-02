# build gst-lightning
#
AM_CPPFLAGS = -I$(INCLIGHTNING)
ACLOCAL_AMFLAGS = -I m4

if !HAVE_INSTALLED_LIGHTNING
AM_CPPFLAGS += -I$(top_srcdir)/lightning -I$(top_builddir)/lightning
endif

lib_LTLIBRARIES = libgstlightning.la
libgstlightning_la_SOURCES = gst-lightning.c gst-lightning.h

DISTCLEANFILES = pkgrules.tmp
all-local:
clean-local::
install-data-hook::
dist-hook::
uninstall-local::

@PACKAGE_RULES@

