#! /bin/bash
#
# remove requirement that htslib depends on libhts.so
/usr/lib/rpm/find-requires $* | sed -e '/libhts\.*/d' | sed -e '/^[[:space:]]*$/d' | sed -e '/^#/d'
