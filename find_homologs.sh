#! /bin/bash
# usage: find_homologs.sh <query file> <subject file> <output file>
query_file=$1
subject_file=$2
output_file=$3

tblastn -query $query_file -subject $subject_file -outfmt '6 std qlen' > $output_file

echo 'Number of hits:'
wc -l $output_file
