#!/bin/bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TARGETS="$ROOT/sample_data/targets"
OUTPUTS="$ROOT/sample_data/outputs"

mkdir -p "$OUTPUTS"
date > "$OUTPUTS/WORKSPACE_PREPARED_AT.txt"
find "$TARGETS" -type f -exec touch {} +

echo "Workspace prepared for VAULTSync dry runs."
echo "Targets: $TARGETS"
echo "Outputs: $OUTPUTS"
