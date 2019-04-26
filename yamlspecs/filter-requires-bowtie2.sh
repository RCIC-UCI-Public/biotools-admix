#! /bin/bash
#
# remove requirement that bowtie2 depends on perl(Math::Random) 
/usr/lib/rpm/find-requires $* | sed -e '/perl(Math::Random)/d' | sed -e '/^[[:space:]]*$/d' | sed -e '/^#/d'
