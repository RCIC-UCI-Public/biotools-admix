#!/bin/bash
# Rewrite perl rpm requires
/usr/lib/rpm/find-requires $* | sed -e 's/perl(/perl_5.30.0(/'
