---
description: Check for redundant code, race conditions, and vibe coding pitfalls
---

# Vibe Check

Scan the codebase for redundant code, race conditions, and common "vibe coding" pitfalls.

## Your Task

Use the redundancy checker agent to analyze the codebase for:

1. **Redundant Code**
   - Duplicate functions or logic
   - Unused imports, variables, or functions
   - Copy-pasted code that should be abstracted
   - Dead code paths

2. **Race Conditions**
   - Async operations without proper awaiting
   - Shared state mutations without synchronization
   - Event handlers that could fire out of order
   - Missing cleanup in useEffect or similar patterns

3. **Vibe Coding Pitfalls**
   - Overly optimistic error handling (or none at all)
   - Magic strings/numbers that should be constants
   - Deeply nested callbacks or promises
   - Inconsistent naming conventions
   - Functions doing too many things
   - Missing null/undefined checks

## Output Format

Report findings grouped by severity:

**Critical** - Will cause bugs or crashes
**Warning** - Could cause issues under certain conditions
**Info** - Code smell, consider refactoring

For each finding, provide:
- File and line number
- What the issue is
- Why it's a problem
- Suggested fix
