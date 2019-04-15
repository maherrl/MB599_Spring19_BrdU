# first draft of anvio script using tutorial data with errors

## Start in anvio directory with contigs.fa file and raw BAM files

### reformat FASTA input with usable deflines (usuable contig names)
anvi-script-reformat-fasta contigs.fa -o contigs-fixed.fa -l 1000 --simplify-names

mv contigs-fixed.fa contigs.fa

### creat anvio contigs database
anvi-gen-contigs-database -f contigs.fa -o contigs.db -n 'An example contigs database'

### decorate contig database with hits from HMM models
anvi-run-hmms -c contigs.db     # three hits

### can visualize the contigs database with:
# anvi-display-contigs-stats contigs.db

### Initialize BAM files
# this step requires a SAMPLE_IDs file with all sample names, one per line

for sample in `cat SAMPLE_IDs`; do anvi-init-bam $sample-RAW.bam -o $sample.bam; done

### Creat sample-specific profiles 
# ATTENTION: could not get this step to work with tutorial data
anvi-profile -i SAMPLE-01.bam -c contigs.db --output-dir PROFILE --sample-name SAMPLE-01
# error: some contig names in the contig db do not match contig names in .bam file
# Shouldn't this have been reolved with the reformat-fasta commands??

## Haven't run any of this yet
# repeat for each sample
anvi-profile -i SAMPLE-02.bam -c contigs.db --output-dir PROFILE --sample-name SAMPLE-02
anvi-profile -i SAMPLE-03.bam -c contigs.db --output-dir PROFILE --sample-name SAMPLE-03

### Merge step that clusters using CONCOCT
anvi-merge SAMPLE-01/PROFILE.db SAMPLE-02/PROFILE.db SAMPLE-03/PROFILE.db -o SAMPLES-MERGED -c contigs.db

done
