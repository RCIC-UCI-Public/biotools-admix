#! /bin/bash
#
# remove requirement that bowtie2 depends on perl(Math::Random) 
# Substitute all references of perl( with perl_{{version}}
PERLVERSION=$(cat $(dirname $(realpath $0))/PERLVERSION)
/usr/lib/rpm/find-requires $* | sed -e '/perl(Math::Random)/d'  -e "s/perl(/perl_$PERLVERSION(/g"

