---
name: trellis
description: Initialize or repair Trellis project structure
---

# Trellis Setup

Initialize or repair the Trellis project structure. This command is idempotent - it only creates what's missing.

## Your Task

Check for and create the following files/folders if they don't exist:

### Root Level Files
1. **TECH_SPECS.md** - Create with the template from the trellis-setup agent
2. **README.md** - Create with basic template if missing
3. **CHANGELOG.md** - Create with header if missing

### .trellis/ Folder (add to .gitignore)
1. **STORY.md** - Template with: Title, Description, Acceptance Criteria, Tasks, Notes
2. **SESSION_CHANGELOG.md** - Empty with header
3. **NOTES.md** - Empty with header

### .claude/ Folder
1. **CLAUDE.md** - Empty with `## Standards` section clearly labeled
2. **RULES.md** - Blank file

### .gitignore
- Append `.trellis/` if not already present

## Execution

Use the trellis-setup agent to perform these operations. Report back what was created vs what already existed.
