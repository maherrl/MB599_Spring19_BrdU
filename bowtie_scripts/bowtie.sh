#!/bin/bash
for f1 in /ACTF/Course/mb599_bds_s19/data/share/group2_David/Brdu_clean_reads/YOUR_READ_FILE.fastq
do
        newfile="$(basename $f1)"
        bowtie2 -r $f1 -x <full path to files in the directory where bowtie_build.sh was run> -S ${newfile}.sam -p 10
done
#make sure to input your read file - it should match your contig file - please double check if I did this correctly
#Adriana: 2348.5.1888_HerrR_phiX_trim.fastq, 2202.1.1815_HerrR_phiX_trim.fastq
#Becca: 2305.7.1865_HerrR_phiX_trim.fastq, 2348.3.1888_HerrR_phiX_trim.fastq
#Jungmin: 2168.2.1789_HerrR_phiX_trim.fastq
#Karen: 2119.3.1770_HerrR_phiX_trim.fastq
#also make sure to add the path to the directory where you ran bowtie_build.sh and indicate the name of all files with everything before the .#.bt2 or .rev.#.bt2, example: /ACTF/Course/mb599_bds_s19/home/messyasa/bowtie/2348bowtie_build/F12B_2348_5_1888_800bp.fasta_bowtiebuild
#Note, the -p 10 means to give this command 10 cpu's - it takes a bit of time to run
