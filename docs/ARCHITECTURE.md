# ARCHITECTURE

- `bin/` stores the `vaultsync` executable used for local runs.
- `sample_data/targets/` contains synthetic vault exports and migration fixtures.
- `sample_data/outputs/` stores run metadata, diagnostics, and generated reports.
- `scripts/prep_workspace.sh` creates a reproducible workspace state before imports.
- `scripts/collect_diagnostics.sh` captures file listings and checksums after runs.
- `manifests/repo_manifest.json` defines expected paths and supported workflows.
