#!/bin/sh

IFS=$'\n'
INFILE=$1
shift 
PROC=$@

for line in `cat $INFILE`;do
   echo $line
   eval "$PROC $line"
done
