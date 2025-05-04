#!/bin/bash
# Rewrite perl rpm provides
PERLVERSION=$(cat $(dirname $(realpath $0))/PERLVERSION)
/usr/lib/rpm/find-provides $* | sed -e "s/perl(/perl_$PERLVERSION(/g"
