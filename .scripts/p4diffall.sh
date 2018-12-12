#!/bin/bash
changelist_num=$1
printf "Diff-ing all files in $changelist_num with the opened workspace files of $P4CLIENT\n"
p4 opened -c $changelist_num | awk -v cl_num=$changelist_num 'BEGIN { FS = "#" } { print "p4 diff " $1 "@=" cl_num }' | bash
