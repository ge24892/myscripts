#!/bin/sh
# Command-line world clock friglet

LA=`TZ=America/Los_Angeles date +LA%n%Y/%m/%d%n%T|figlet -k`
HK=`TZ=Asia/Hong_Kong date +HK%n%Y/%m/%d%n%T|figlet -k`

echo "$LA"
echo "------------------------------------------------------"
echo "$HK"
