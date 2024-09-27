#!/usr/bin/env bash
#SBATCH -A gchopra
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --time=7-00:00:00

gmx_mpi mdrun -deffnm ie -rerun md_0_10.xtc -nb cpu
