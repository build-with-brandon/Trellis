#!/bin/bash

# Log completion to session changelog
# Called by PostToolUse hook after Write/Edit operations

SESSION_CHANGELOG=".trellis/SESSION_CHANGELOG.md"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M")

# Check if session changelog exists
if [ ! -f "$SESSION_CHANGELOG" ]; then
    exit 0
fi

# Get tool info from environment (set by Claude Code hooks)
TOOL_NAME="${CLAUDE_TOOL_NAME:-unknown}"
FILE_PATH="${CLAUDE_FILE_PATH:-unknown}"

# Only log Write and Edit operations
if [[ "$TOOL_NAME" != "Write" && "$TOOL_NAME" != "Edit" ]]; then
    exit 0
fi

# Extract just the filename from the path
FILENAME=$(basename "$FILE_PATH")

# Append to session changelog
echo "- [$TIMESTAMP] Modified: $FILENAME" >> "$SESSION_CHANGELOG"
