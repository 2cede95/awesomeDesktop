#!/bin/bash

sensors | awk '/Package id 0/ {printf"cpu: +%i °C\n", $4}'
