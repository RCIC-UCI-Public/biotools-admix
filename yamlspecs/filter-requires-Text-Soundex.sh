#!/bin/bash
# Rewrite perl rpm requires
PERLVERSION=$(cat $(dirname $(realpath $0))/PERLVERSION)
/usr/lib/rpm/find-requires $* | sed  -e "s/perl(/perl_$PERLVERSION(/g"
