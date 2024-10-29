#!/bin/bash
# remove odd requirements 
/usr/lib/rpm/find-requires $* | grep -v -e 'libhts.so.3(HTSLIB_'
