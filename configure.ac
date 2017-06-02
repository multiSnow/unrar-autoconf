# Process this file with autoconf to produce a configure script.
AC_INIT([unrar],[5.5.3])
AM_INIT_AUTOMAKE
AC_CONFIG_MACRO_DIRS([m4])
AC_CONFIG_SRCDIR([ext/unrar/rar.cpp])
# Make builds less verbose.  Shuts off Makefile portability checks.
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

# Note: config.h is not used in the current build
# We leave this in place only to suppress an error message at autogen time
AM_CONFIG_HEADER(config.h)

# Checks for programs.
AC_PROG_LIBTOOL
AC_PROG_CXX
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET

# Shared-library version
#SHLIBVERSION=0:0:0
#AC_SUBST(SHLIBVERSION)

# check pthread
PTHREAD_CFLAGS='-pthread'
PTHREAD_LIBS='-lpthread'

save_CFLAGS="${CFLAGS}"
save_LIBS="${LIBS}"
CFLAGS="${CFLAGS} ${PTHREAD_CFLAGS}"
LIBS="${LIBS} ${PTHREAD_LIBS}"

AC_CHECK_FUNC([pthread_join],[:],AC_MSG_ERROR([pthread is required.]))

CFLAGS="${save_CFLAGS}"
LIBS="${save_LIBS}"

AC_SUBST(PTHREAD_CFLAGS)
AC_SUBST(PTHREAD_LIBS)

# generate
AC_CONFIG_FILES([
Makefile
])
AC_OUTPUT
