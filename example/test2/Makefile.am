##############################################################################
#
# PMlib - Performance Monitor library
#
# Copyright (c) 2010-2011 VCAD System Research Program, RIKEN.
# All rights reserved.
#
# Copyright (c) 2012-2015 Advanced Institute for Computational Science, RIKEN.
# All rights reserved.
#
##############################################################################

noinst_PROGRAMS = test2


DISTCLEANFILES=*~ test2
CLEANFILES=data/*.log

EXTRA_DIST=


test2_SOURCES  = main_kernel.cpp sub_kernel.c
test2_CFLAGS = -I$(top_srcdir)/include -I@PAPI_DIR@/include @MPI_CFLAGS@
test2_CXXFLAGS = -I$(top_srcdir)/include -I@PAPI_DIR@/include @MPI_CFLAGS@
#     -std=c99 -g -DSTATIC_PAPI_EVENTS_TABLE -D_REENTRANT -D_GNU_SOURCE -DUSE_COMPILER_TLS  -DPAPI_NO_MEMORY_MANAGEMENT -DUSE_PAPI

if PAPI_TARGET
  test2_LDADD = \
	  -L$(top_builddir)/src -lPM@MPI_EXT@ \
	  -L$(top_builddir)/src_papi_ext -lpapi_ext \
	  @MPI_LIBS@ \
	  @MPI_LDFLAGS@ \
	  -L@PAPI_DIR@/lib64 -lpapi \
	  -L@PAPI_DIR@/lib64 -lpfm
else
  test2_LDADD = \
    -L$(top_builddir)/src -lPM@MPI_EXT@ \
    @MPI_LIBS@ \
    @MPI_LDFLAGS@
endif

dist_noinst_DATA=

.PHONY:$(dist_noinst_DATA)
