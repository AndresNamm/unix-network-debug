#!/bin/sh
output=$(iptables -nvxL $1|tail -1)
timestamp=$(date)
echo "$timestamp,$output"

