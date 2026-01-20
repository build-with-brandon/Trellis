#!/bin/bash

# Capture build/test output for the build runner agent
# Called by PostToolUse hook after Bash operations

# Get command from environment (set by Claude Code hooks)
COMMAND="${CLAUDE_BASH_COMMAND:-}"
EXIT_CODE="${CLAUDE_EXIT_CODE:-0}"

# Build/test command patterns to capture
BUILD_PATTERNS="npm run build|yarn build|pnpm build|cargo build|go build|swift build|make|gradle build|mvn compile"
TEST_PATTERNS="npm test|yarn test|pnpm test|cargo test|go test|pytest|jest|vitest|swift test|gradle test|mvn test"
RUN_PATTERNS="npm start|npm run dev|yarn start|yarn dev|cargo run|go run|python|node"

# Check if command matches any pattern
if echo "$COMMAND" | grep -qE "($BUILD_PATTERNS|$TEST_PATTERNS|$RUN_PATTERNS)"; then
    # This is a build/test/run command - the hook system will make output available
    # The build runner agent will be notified to summarize
    exit 0
fi

# Not a build command, exit silently
exit 0
