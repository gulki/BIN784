#!/bin/bash

awk '{print $6}' bin784_example_fstat.pedind | sort -u | head -4 > uniquepops.txt

