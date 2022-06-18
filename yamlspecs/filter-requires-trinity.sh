#! /bin/bash
# remove requirement that trinity depends on perl packages and extra strings
# Substitute all references of perl with perl_{{version}}

PERLVERSION=$(cat $(dirname $(realpath $0))/PERLVERSION)
/usr/lib/rpm/find-requires $* | sed \
    -e '/perl(XML::Compile/d' \
    -e '/perl(HTC::GridRunner/d' \
    -e '/perl(Bio::Graphics/d' \
    -e '/perl(CanvasXpress::/d' \
    -e '/package/d' \
    -e '/\/usr\/local\/bin\/perl/d' \
    -e "s/perl(/perl_$PERLVERSION(/g"
