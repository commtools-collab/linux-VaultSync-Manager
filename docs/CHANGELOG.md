# CHANGELOG

## 1.0.0
- First stable release of VAULTSync linux tooling.
- Added `legacy_export_import` workflow for migrating CSV exports into vault format.
- Added `vault_health_check` workflow to audit weak passwords and inactive accounts.
- Added `dry_run_validation` mode to preview changes before committing.
- Included signing key (`bin/config/pub.pem`) for binary integrity verification.
- Bundled `bin/vaultsync` ELF binary (x86-64, statically linked).
- Added sample fixtures under `sample_data/targets/` for onboarding and testing.

## 0.9.0
- Initial repository structure and local tooling baseline.
- Scaffolded `scripts/`, `docs/`, `manifests/`, and `sample_data/` layout.
- Placeholder binary and configuration stubs.
