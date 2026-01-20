# Changelog

All notable changes to the Trellis project will be documented in this file.

## [1.1.0] - 2026-01-20

### Added

- **trellis-core plugin** (v1.0.0): Project initialization
  - `/trellis` - Initialize or repair project structure
  - Creates TECH_SPECS.md, README.md, CHANGELOG.md templates
  - Creates .trellis/ folder with STORY.md, SESSION_CHANGELOG.md, NOTES.md
  - Creates .claude/ folder with CLAUDE.md (Standards section) and RULES.md
  - Adds .trellis/ to .gitignore
  - Idempotent: only creates missing files

- **trellis-changelog plugin** (v1.0.0): Changelog management
  - `/done` - Transfer session changelog to main changelog
  - Changelog Agent for managing session and root changelogs
  - PostToolUse hooks on Write/Edit for automatic session tracking
  - Auto-compaction when changelog exceeds 400 lines
  - Context query support for main agent

- **trellis-build plugin** (v1.0.0): Build runner
  - Build Runner Agent for executing builds/tests
  - Stack trace summarization
  - PostToolUse hooks on Bash for build capture
  - Auto-detects project type

- **trellis-vibe-check plugin** (v1.0.0): Code quality
  - `/vibe-check` - Scan for redundant code, race conditions, vibe coding pitfalls
  - Redundancy Checker Agent
  - Reports findings by severity (Critical, Warning, Info)

- **trellis-notes plugin** (v1.0.0): Notes enrichment
  - `/notes` - Enrich working notes with context
  - Notes Agent reads .trellis/NOTES.md and adds relevant files, patterns, considerations

- **trellis-arch plugin** (v1.0.0): Architecture documentation
  - `/arch` - Generate ARCHITECTURE.md with Mermaid diagrams
  - Architecture Agent analyzes codebase and creates visual documentation

- **plugins/README.md**: Comprehensive plugin documentation with installation instructions and structure overview

### Changed

- Expanded marketplace from 3 to 9 plugins
- Reorganized plugins by category (core, context, development, quality, planning, documentation)

### Fixed

- Added `name:` field to all SKILL.md frontmatter (required for skill registration)
- Fixed plugin source paths in marketplace.json to use `./plugins/plugin-name` format

---

## [1.0.0] - 2026-01-20

### Added
- **Plugin Marketplace**: Created a Claude Code plugin marketplace for distributing Trellis methodology tools
  - Marketplace catalog at `.claude-plugin/marketplace.json`
  - Three initial plugins aligned with Trellis phases

- **trellis-planning plugin** (v1.0.0): Planning phase tools
  - `/plan` - Plan features using the two-document approach (TECH_SPECS + README)
  - `/research` - Research technologies, patterns, and possibilities before building
  - `/spec` - Generate comprehensive TECH_SPECS.md documents

- **trellis-review plugin** (v1.0.0): Review phase tools
  - `/review` - Review code/features with "AI drafts, you decide" mindset
  - `/kaizen` - Conduct continuous improvement retrospectives

- **trellis-context plugin** (v1.0.0): Context management tools
  - `/context-check` - Evaluate and manage working context lifecycle
