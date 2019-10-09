#!/bin/bash
### for each fasta file in directory, echo name of file and cat contents

for fa in *.fasta; do
	echo $fa
	cat $fa
done 