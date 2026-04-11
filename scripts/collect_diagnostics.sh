#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TARGETS="$ROOT/sample_data/targets"
OUTPUTS="$ROOT/sample_data/outputs"
REPORT="$OUTPUTS/DIAGNOSTICS_REPORT.txt"

{
  echo "Diagnostics collection time: $(date)"
  echo
  echo "[Input Targets]"
  find "$TARGETS" -type f | sort
  echo
  echo "[Generated Outputs]"
  find "$OUTPUTS" -type f | sort
  echo
  echo "[SHA256 Input Targets]"
  find "$TARGETS" -type f -print0 | sort -z | xargs -0 shasum -a 256
  echo
  echo "[SHA256 Generated Outputs]"
  if find "$OUTPUTS" -type f | grep -q .; then
    find "$OUTPUTS" -type f -print0 | sort -z | xargs -0 shasum -a 256
  fi
} > "$REPORT"

echo "Diagnostics written to $REPORT"
