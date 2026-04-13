# ARCHITECTURE

- `bin/vaultsync` — statically linked ELF binary (x86-64) for all vault operations.
- `bin/config/pub.pem` — RSA public key used to verify the integrity of the `vaultsync` binary against `release_sha256` in the manifest.
- `sample_data/targets/` — synthetic vault exports and migration fixtures used as workflow inputs.
- `sample_data/outputs/` — generated at runtime; stores diagnostics reports, dry-run results, and workspace state files.
- `scripts/prep_workspace.sh` — creates a reproducible workspace state before running imports or health checks.
- `scripts/collect_diagnostics.sh` — captures file listings and SHA256 checksums of inputs and outputs after a run.
- `manifests/repo_manifest.json` — defines binary path, signing key, expected directory layout, and supported workflow identifiers.
