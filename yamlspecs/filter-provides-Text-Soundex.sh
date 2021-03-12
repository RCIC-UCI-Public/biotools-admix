#!/bin/bash
# Rewrite perl rpm provides
/usr/lib/rpm/find-provides $* | sed  -e 's/perl(/perl_5.30.0(/'
