#!/bin/sh

nvidia-smi -q | awk '/GPU Current Temp/ {printf"gpu: +%i °C\n", $5}'
