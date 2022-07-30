#!/bin/sh

free --mebi | sed -n '2{p;q}' | awk '{printf("mem: %2.2f GiB\n"), (($2-$7)/1024)}'
