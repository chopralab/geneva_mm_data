#!/usr/bin/env bash
#SBATCH -A standby
#SBATCH --nodes=1
#SBATCH -n 128
#SBATCH --time=4:00:00

for i in *.pdb
do
    if [[ -s ${i}.scores ]]; then
        continue
    fi
    /depot/gchopra/apps/candiy_rice/modules/rescore_all.sh $i > ${i}.scores
done

