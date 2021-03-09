#!/bin/bash

a=$1
b=$2

echo "$(( ($a+10)**$b-5 ))"
