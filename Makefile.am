# build gst-lightning
#
AM_CPPFLAGS = -I$(INCLIGHTNING)

if !HAVE_INSTALLED_LIGHTNING
AM_CPPFLAGS += -I$(top_srcdir)/lightning -I$(top_builddir)/lightning
endif

lib_LTLIBRARIES = libgstlightning.la
libgstlightning_la_SOURCES = gst-lightning.c gst-lightning.h

