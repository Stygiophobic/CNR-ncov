#!/bin/bash

singularity_img="/srv/nfs/ngs-stockage/NGS_Virologie/NEXTSTRAIN/nextstrainV4.simg"

#singularity shell /srv/nfs/ngs-stockage/NGS_Virologie/NEXTSTRAIN/nextstrainV4.simg

fasta="/srv/nfs/ngs-stockage/NGS_Virologie/HadrienR/ncov-data/sequences.fasta"
metadata="/srv/nfs/ngs-stockage/NGS_Virologie/HadrienR/ncov-data/metadata.tsv"

singularity exec $singularity_img snakemake \
                                    --config input_sequence=$fasta \
                                             input_metadata=$metadata

