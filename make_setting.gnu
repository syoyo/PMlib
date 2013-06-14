###################################################################
#
# PMlib - Performance Monitor library
#
# Copyright (c) 2010-2011 VCAD System Research Program, RIKEN.
# All rights reserved.
#
# Copyright (c) 2012-2013 Advanced Institute for Computational Science, RIKEN.
# All rights reserved.
#
###################################################################


##########
# GNU
##########

AR          = ar cru
RANLIB      = ranlib
RM          = \rm -f
MPI_DIR     = /opt/openmpi
CXX         = mpicxx
CXXFLAGS    = -O3 -Wall
CXXFLAGS   += -I$(MPI_DIR)/include