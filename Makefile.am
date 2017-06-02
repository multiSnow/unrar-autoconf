AUTOMAKE_OPTIONS = subdir-objects

include ext.mk

AM_CXXFLAGS = $(PTHREAD_CFLAGS)
AM_CPPFLAGS = -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE -DRAR_SMP
AM_LDFLAGS  = -Wl,--no-undefined

LIBS        += $(PTHREAD_LIBS)

bin_PROGRAMS   = unrar
unrar_SOURCES  = $(BASE_SRC) $(BIN_SRC)
unrar_CPPFLAGS = $(AM_CPPFLAGS) -DUNRAR

lib_LTLIBRARIES      = libunrar.la
libunrar_la_SOURCES  = $(BASE_SRC) $(LIB_SRC)
libunrar_la_CPPFLAGS = $(AM_CPPFLAGS) -DRARDLL
libunrar_la_LDFLAGS  = $(AM_LDFLAGS) -avoid-version
#libunrar_la_LDFLAGS  = $(AM_LDFLAGS) -version-info @SHLIBVERSION@
