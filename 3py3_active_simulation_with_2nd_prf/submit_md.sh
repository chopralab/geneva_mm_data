#!/usr/bin/env bash
#SBATCH -A gchopra
#SBATCH --nodes=1
#SBATCH --ntasks=128
#SBATCH --time=7-00:00:00

gmx_mpi mdrun -deffnm md_0_10 -cpi md_0_10.cpt -ntomp 64

