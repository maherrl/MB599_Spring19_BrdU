#!/bin/bash
for f1 in /ACTF/Course/mb599_bds_s19/data/share/group2_David/contigsdb/contigs-fixed.fa
do
        newfile="$(basename $f1)"
        bowtie2-build -f $f1 ${newfile}_bowtiebuild
done
