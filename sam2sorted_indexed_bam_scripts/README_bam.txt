Steps to go from sam to sorted an indexed bam

1) sam2sorted_bam.sh: converts sam to a sorted bam file
- put the path of the sam file you created via the bowtie.sh script
- this will creat a .sort.bam file that you will use as input for the next script
- To make the script executable, run: chmod +x sam2sorted_bam.sh	

2) bam_index.sh: indexes the bam file, this file can be used for Anvio
- put the path of the bam file you created in the previous step
- this command should out put a bai file - which will be used for Anvio
- To make the script executable, run: chmod +x bam_index.sh
