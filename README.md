# VAULTSync Password Manager (linux)

VAULTSync is a linux-focused password manager project for vault migration, validation, and operational tooling.

This repository contains project scaffolding, sample data, documentation, and helper scripts used to run and verify VaultSync workflows.

## Repository Contents
- `bin/`: location for the `vaultsync` executable.
- `manifests/repo_manifest.json`: repository metadata and expected paths.
- `sample_data/targets/`: sample vault exports and migration fixtures.
- `sample_data/outputs/`: generated reports and dry-run output.
- `scripts/prep_workspace.sh`: prepares a clean local run state.
- `scripts/collect_diagnostics.sh`: gathers file listings and checksums after a run.
- `docs/ARCHITECTURE.md`: high-level repository layout.
- `docs/CHANGELOG.md`: version history.

## Quick Start
1. Prepare the workspace:
   ```bash
   ./scripts/prep_workspace.sh
   ```
2. Place the VaultSync binary at:
   ```bash
   ./bin/vaultsync
   ```
3. Review repository settings:
   ```bash
   cat ./manifests/repo_manifest.json
   ```
4. Run VAULTSync using your target inputs:
   ```bash
   ./bin/vaultsync
   ```
5. Collect run artifacts:
   ```bash
   ./scripts/collect_diagnostics.sh
   ```
