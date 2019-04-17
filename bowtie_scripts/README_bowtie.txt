Steps to run the bowtie scripts

1) bowtie_build.sh script; makes a index of the contigs so the reads can be mapped back to them
- Take the script and add the path to the contigs you are working on. I already assigned contigs to each person - can see this as comments in this script
- To make the script executable, run: chmod +x bowtie_build.sh
- Run the script in a distinct directory - you will call this directory in the next bowtie.sh script

2) bowtie.sh; maps reads to contigs
- Take the script and add the path to your read file 
- also add the path to the files in the directory where you ran your bowtie_build.sh command - I have given an example of what this would look like as a comment at the end of the script - this part is pretty confusing
- Make the script executable: chmod +x bowtie.sh
- Run the script - it will probably take some time - it will out put one .sam file - which will be used in the sam to bam scripts
