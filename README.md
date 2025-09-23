# geneva_mm_data

Research data and workflows for the **Geneva (Geneva-MM)** project at Chopra Lab, focused on small‑molecule **docking**, **compound–protein interaction** analyses, and **molecular dynamics (MD) simulations)**. The repository includes code and data to take ligands from interaction‑matrix style resources through docking and MD refinement, with utilities for aggregating results into downstream analysis tables.

---

## Repository structure

```
.
├── CANDO_interactions/           # Scripts/data to process CANDO interaction matrices
├── compound_protein_interaction/ # CPI model used for mapping compounds to protein targets
├── docking/                      # CANDOCK Docking inputs, parametrization helpers, and result collectors
├── md_simulations/               # GROMACS-ready systems, trajectories, and MD analysis notebooks
├── .gitmodules                   # Submodules used in this repository (initialize after cloning)
└── .gitignore
```


## Citation

If this repository contributes to your research, please cite the Chopra Lab and any associated publications from the Geneva project. (Add DOIs here once available.)

---

## Maintainers

- Prageeth Wijewardhane (@gwijewar / @prageethrw)
- Matthew Muhoberac (@mmuhoberac)
