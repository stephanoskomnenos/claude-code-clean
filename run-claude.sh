#!/bin/bash
# Run Claude Code from source with Bun
# Usage:
#   ./run-claude.sh                    # interactive mode
#   ./run-claude.sh -p "hello"         # print mode (single query)
#   ./run-claude.sh --help             # show help
SCRIPT_PATH="$(readlink -f -- "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(cd -- "$(dirname -- "$SCRIPT_PATH")" && pwd)"
exec bun run --preload "$SCRIPT_DIR/stubs/globals.ts" "$SCRIPT_DIR/src/entrypoints/cli.tsx" "$@"
