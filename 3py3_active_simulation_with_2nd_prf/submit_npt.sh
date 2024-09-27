#!/usr/bin/env bash
#SBATCH -A standby
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --time=4:00:00

gmx_mpi mdrun -v -deffnm npt

