#!/bin/bash
# remove requirements that are provide by RPM itself
/usr/lib/rpm/find-requires $* | grep -v -e 'libhdf5.so.*' -e 'libnvrtc-builtins.so.*'
