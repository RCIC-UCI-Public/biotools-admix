#!/bin/bash
# This does the magic of preparing cufflinks for build
export LDFLAGS="-L$samtools__PREFIX/lib -L$BOOST_HOME/lib $htslib__LDFLAGS -lbam -lboost_system -lst -lhts"
export CFLAGS="-march=haswell $htslib__CPPFLAGS"
autoreconf --install
CPPFLAGS="$samtools__CPPFLAGS $htslib__CPPFLAGS $CPPFLAGS" ./configure $*
