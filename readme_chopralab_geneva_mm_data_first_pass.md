# geneva_mm_data

Research data and workflows for the **Geneva (Geneva-MM)** project at Chopra Lab, focused on small‑molecule **docking**, **compound–protein interaction** analyses, and **molecular dynamics (MD) simulations)**. The repository includes code and data to take ligands from interaction‑matrix style resources through docking and MD refinement, with utilities for aggregating results into downstream analysis tables.

> **Status:** Actively evolving; structure documented here reflects the current repo layout.

---

## Repository structure

```
.
├── CANDO_interactions/           # Scripts/data to process CANDO-style interaction matrices
├── compound_protein_interaction/ # Utilities for mapping compounds to protein targets (e.g., kinases)
├── docking/                      # Docking inputs, parametrization helpers, and result collectors
├── md_simulations/               # GROMACS-ready systems, trajectories, and MD analysis notebooks
├── .gitmodules                   # Submodules used in this repository (initialize after cloning)
└── .gitignore
```

### Folder details

- **CANDO_interactions/** – Parsers, format converters, and summarization utilities for CANDO‑like interaction outputs (e.g., compound×protein scores). Expect CSV/TSV matrices and small helper scripts to harmonize identifiers.
- **compound_protein_interaction/** – Data files and scripts to curate or enrich **compound↔protein** links (kinase‑focused inputs supported). Typical tasks include mapping IDs (UniProt, gene symbols), filtering by target class, and exporting tidy tables for modeling.
- **docking/** – Project‑specific **docking** workflows. Keeps ligand/protein preparation helpers and run scripts. You can use your docking engine of choice (e.g., AutoDock Vina, GNINA, UniDock). Result parsers should emit concise per‑ligand pose summaries (RMSD, score, pose rank) and merged tables.
- **md_simulations/** – Molecular dynamics systems and analysis. Expect **GROMACS** input sets (gro/top/itp/mdp) and example trajectories (e.g., `.xtc`, `.tpr`, `.pdb`). Notebooks/scripts should cover post‑processing (RMSD/RMSF, H‑bonding, contacts, clustering) and pose stability checks after docking.

> If you add new modules, follow the same pattern: keep raw inputs under `inputs/`, generated intermediates under `processed/`, and finalized outputs under `results/` inside each subfolder.

### 3) Typical workflow

**A. Prepare compound and protein inputs**
- Curate ligand CSV/SMILES and protein targets; standardize IDs.
- For proteins: add cofactors/ions, protonation state, and remove alternate conformations.

**B. Docking**
- Prepare receptors/ligands; define search boxes or binding sites.
- Batch dock ligands; capture top‑N poses and scores per ligand.

**C. Interaction matrix & aggregation**
- Convert docking outputs to tidy tables; (optionally) merge with CANDO‑style scores.
- Compute per‑target hit lists and cross‑target summary statistics.

**D. MD refinement & analysis**
- Build protein–ligand complexes from docked poses.
- Run equilibration + production MD.
- Analyze stability (RMSD, contacts, H‑bonds, MM/GBSA if applicable) and export plots/tables.


## Citation

If this repository contributes to your research, please cite the Chopra Lab and any associated publications from the Geneva project. (Add DOIs here once available.)

---

## Maintainers

- Prageeth Wijewardhane (@gwijewar / @prageethrw)
- Matthew Muhoberac (@mmuhoberac)
