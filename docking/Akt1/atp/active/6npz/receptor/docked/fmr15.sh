#!/usr/bin/env bash
#SBATCH -A standby
#SBATCH --nodes=1
#SBATCH -n 128
#SBATCH --time=4:00:00

export PATH=/depot/gchopra-class/apps/candock/v0.6.0_chm579/modules/:$PATH
for i in *.pdb
do
   calc_posescore.sh --receptor $i --ncpu 1 --func=normalized_frequency --cutoff=15 --top_percent=0.2 > $i.fmr15
done
