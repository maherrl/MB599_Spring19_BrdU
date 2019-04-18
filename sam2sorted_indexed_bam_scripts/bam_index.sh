#!/bin/bash
for f1 in <path to sorted bam file>
do
   samtools index $f1
done
#make sure to put in your path to the sorted bam file from the sam2sorted_bam.sh script
#the output should be a .bai file in the directory you run the command in

