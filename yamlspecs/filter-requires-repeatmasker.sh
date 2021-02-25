#! /bin/bash
#
# Substitute all references of perl( with perl_{{version}}
PERLVERSION=$(cat $(dirname $(realpath $0))/PERLVERSION)
/usr/lib/rpm/find-requires $* | sed \
  -e '/\.*perl$/d'\
  -e '/package/d' \
  -e "s/perl(/perl_$PERLVERSION(/g"
