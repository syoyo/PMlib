##############################################################################
#
# PMlib - Performance Monitor library
#
# Copyright (c) 2010-2011 VCAD System Research Program, RIKEN.
# All rights reserved.
#
# Copyright (c) 2012-2013 Advanced Institute for Computational Science, RIKEN.
# All rights reserved.
#
##############################################################################

SUBDIRS = @MAKE_SUB_DIRS@

bin_SCRIPTS    = pm-config
EXTRA_DIST     = pm-config.in LICENSE Makefile_hand src/Makefile_hand doc/Doxyfile
dist_data_DATA = AUTHORS COPYING ChangeLog README LICENSE
#doc_DATA       = doc/Doxyfile doc/How_to_use_PMlib.pdf doc/PMlib.pdf 

clean-local:
	find ./ -name *.obj | xargs rm -f
	find ./ -name *.exe | xargs rm -f
	find ./ -name *.lib | xargs rm -f

distclean-local: clean-local
	rm -f ./bin/*
	rm -f ./lib/*
