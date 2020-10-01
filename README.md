# ViralFusionSeq
Accurately discover viral integration events and fusion transcripts

---
As of 2016, VFS is the only viral integration tool available at NIH HPC system.
https://hpc.nih.gov/apps/ViralFusionSeq/

ViralFusionSeq (VFS) is a versatile high-throughput sequencing (HTS) tool for discovering viral integration events and reconstruct fusion transcripts at single-base resolution. VFS combines soft-clipping information, read-pair analysis, and targeted de novo assembly to discover and annotate viral-human fusion events.

A simple yet effective empirical statistical model is used to evaluate the quality of fusion breakpoints.


## Features
- Applicable and fully tested using RNA-Seq and DNA-Seq data
- Utilize both clipped-sequence (CS) and paired-end (RP) information to discover viral integration
- Re-construction of fusion transcript sequence using CS and RP information
- Minimal user defined parameters are required.
- Fully tested under Ubuntu/Debian system.

## Installation
- Please refer to the manual `VFS.manual.pdf`

## Citation
>Li JW, Wan R, Yu CS, Co NN, Wong N, Chan TF. ViralFusionSeq: accurately discover viral integration events and reconstruct fusion transcripts at single-base resolution. Bioinformatics. 2013 Mar 1;29(5):649-51. doi: 10.1093/bioinformatics/btt011. Epub 2013 Jan 12. PMID: 23314323; PMCID: PMC3582262.
https://pubmed.ncbi.nlm.nih.gov/23314323/

## Announcements
- VFS is superior to Virus-Clip. Comparison report available here: https://github.com/TF-Chan-Lab/ViralFusionSeq/blob/master/VFS.vs.Virus-Clip.pdf

## Previous versions
- Please refer to the SourceForge for previous versions: https://sourceforge.net/projects/viralfusionseq/files/release/
