# VAULTSync Password Manager (linux)

VAULTSync is a linux-focused password manager tool for vault migration, validation, and operational workflows.

This repository contains the `vaultsync` binary, sample data, documentation, and helper scripts used to run and verify VaultSync workflows on x86-64 Linux systems.

## Repository Contents
- `bin/vaultsync`: statically linked ELF binary for all vault operations.
- `bin/config/pub.pem`: RSA public key for binary integrity verification.
- `manifests/repo_manifest.json`: repository metadata, binary hash, and expected paths.
- `sample_data/targets/`: sample vault exports and migration fixtures (inputs).
- `sample_data/outputs/`: generated at runtime — diagnostics reports and dry-run results.
- `scripts/prep_workspace.sh`: prepares a clean local run state before workflows.
- `scripts/collect_diagnostics.sh`: gathers file listings and checksums after a run.
- `docs/ARCHITECTURE.md`: high-level repository layout.
- `docs/CHANGELOG.md`: version history.

## Quick Start
1. Prepare the workspace:
   ```bash
   ./scripts/prep_workspace.sh
   ```
2. Review repository settings and verify binary hash:
   ```bash
   cat ./manifests/repo_manifest.json
   sha256sum ./bin/vaultsync
   ```
3. Run a dry-run validation against the sample targets:
   ```bash
   ./bin/vaultsync --workflow dry_run_validation --input sample_data/targets/
   ```
4. Run a legacy vault import:
   ```bash
   ./bin/vaultsync --workflow legacy_export_import --input sample_data/targets/Legacy-Vault-Export.csv
   ```
5. Collect run artifacts:
   ```bash
   ./scripts/collect_diagnostics.sh
   ```
