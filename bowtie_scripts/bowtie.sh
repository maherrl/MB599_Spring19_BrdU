#!/bin/bash
for f1 in /ACTF/Course/mb599_bds_s19/data/share/group2_David/Brdu_clean_reads/*.fastq
do
        newfile="$(basename $f1)"
        bowtie2 -r $f1 -x /ACTF/Course/mb599_bds_s19/data/share/group2_David/bowtie_dbs/contigsdb/contigs_db -S ${newfile}.sam -p 10
done

