#!/bin/bash
# This does the magic of preparing cufflinks for build
export LDFLAGS="-L$samtools__PREFIX/lib -L$BOOST_HOME/lib $htslib__LDFLAGS -lbam -lboost_system -lst -lhts"
autoreconf --install
./configure $*
