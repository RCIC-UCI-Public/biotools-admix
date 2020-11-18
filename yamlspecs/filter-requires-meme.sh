#! /bin/bash
# remove requirement that meme depends on perl packages and extra strings
# Substitute all references of perl with perl_{{version}}

PERLVERSION=$(cat $(dirname $(realpath $0))/PERLVERSION)
/usr/lib/rpm/find-requires $* | sed \
    -e '/perl(XML::Compile/d' \
    -e '/import/d' \
    -e '/from/d' \
    -e "s/perl(/perl_$PERLVERSION(/g"
