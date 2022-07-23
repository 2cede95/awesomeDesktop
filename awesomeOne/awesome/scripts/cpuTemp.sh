#!/bin/bash

sensors | awk '/Core 0/ {printf"cpu: +%i °C\n", $3}'
