#!/bin/bash
for f1 in /ACTF/Course/mb599_bds_s19/data/share/group2_David/assembly/YOUR_CONTIGS.fasta
do
        newfile="$(basename $f1)"
        bowtie2-build -f $f1 ${newfile}_bowtiebuild
done
#remember to put in your the contig file you are working on
#contig	files for each person: 
#Adriana F12B_2348_5_1888_800bp.fasta, F14TB_2202_1_1815_800bp.fasta
#Becca:	F14TC_2305_7_1865_800bp.fasta, F21B_2348_3_1888_800bp.fasta
#Jungmin: F23B_2168_2_1789_800bp.fasta
#Karen:	F24TB_2119_3_1770_800bp.fasta
