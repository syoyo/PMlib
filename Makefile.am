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

SUBDIRS = @MAKE_SUB_DIRS@

bin_SCRIPTS    = pm-config
CLEANFILES     = $(bin_SCRIPTS)

EXTRA_DIST = pm-config.in LICENSE Makefile_hand doc/Doxyfile BUILD_DIR/.gitkeep

if EXAMPLE_TARGET
  EXTRA_DIST +=
else
  EXTRA_DIST += example
endif

if PAPI_TARGET
  EXTRA_DIST +=
else
  EXTRA_DIST += src_papi_ext
endif

dist_data_DATA = AUTHORS COPYING ChangeLog README LICENSE 
dist_include_HEADERS = include/mpi_stubs.h

clean-local:
	find ./ -name *.obj | xargs rm -f
	find ./ -name *.exe | xargs rm -f
	find ./ -name *.lib | xargs rm -f

distclean-local: clean-local
	rm -f ./bin/*
	rm -f ./lib/*
