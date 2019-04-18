#!/bin/bash
for f1 in <path to sam file>
do
    newfile="$(basename $f1)"
    samtools view -Shu $f1 -@ 10 | samtools sort > ${newfile}.sort.bam
done
#make sure to input the path to the sam file created via bowtie.sh
#Note the @ 10 means to use 10 CPUs, this command takes some time
