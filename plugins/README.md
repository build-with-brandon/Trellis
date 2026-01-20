# Trellis Plugins

Official plugins for the Trellis framework - tools for building software with AI assistance.

## Installation

```bash
# Add the marketplace
/plugin marketplace add btate/Trellis

# Install all plugins
/plugin install trellis-core@trellis-marketplace
/plugin install trellis-changelog@trellis-marketplace
/plugin install trellis-build@trellis-marketplace
/plugin install trellis-vibe-check@trellis-marketplace
/plugin install trellis-notes@trellis-marketplace
/plugin install trellis-arch@trellis-marketplace
/plugin install trellis-planning@trellis-marketplace
/plugin install trellis-review@trellis-marketplace
/plugin install trellis-context@trellis-marketplace
```

---

## Core Plugins

### trellis-core

**Command:** `/trellis`

Initializes or repairs the Trellis project structure. Idempotent - only creates what's missing.

**Creates:**
| File/Folder | Purpose |
|-------------|---------|
| `TECH_SPECS.md` | Technical specification template |
| `README.md` | Project readme template |
| `CHANGELOG.md` | Changelog with header |
| `.trellis/STORY.md` | Current feature/story template |
| `.trellis/SESSION_CHANGELOG.md` | Session change tracking |
| `.trellis/NOTES.md` | Working notes |
| `.claude/CLAUDE.md` | Project instructions with Standards section |
| `.claude/RULES.md` | Custom rules (blank) |

Also adds `.trellis/` to `.gitignore`.

---

### trellis-changelog

**Command:** `/done`

**Agent:** Changelog Agent

Manages changelog lifecycle with automatic session tracking.

**Features:**
- **Automatic logging**: Hooks capture Write/Edit operations to `.trellis/SESSION_CHANGELOG.md`
- **Transfer**: `/done` moves session changelog to root `CHANGELOG.md`
- **Compaction**: Auto-summarizes when changelog exceeds 400 lines
- **Context queries**: Main agent can query changelog history

**Hooks:**
- `PostToolUse` on `Write|Edit` → logs to session changelog

---

### trellis-build

**Agent:** Build Runner

Executes builds/tests and summarizes results.

**Features:**
- Auto-detects project type (Node, Python, Rust, Go, Swift, etc.)
- Summarizes stack traces to actionable format
- Reports success/failure/warnings concisely

**Hooks:**
- `PostToolUse` on `Bash` → captures build/test output

---

## Quality Plugins

### trellis-vibe-check

**Command:** `/vibe-check`

**Agent:** Redundancy Checker

Scans codebase for issues common in rapid AI-assisted development.

**Checks for:**
- **Redundant code**: Duplicates, dead code, over-abstraction
- **Race conditions**: Missing awaits, stale closures, shared state issues
- **Vibe coding pitfalls**: Empty catch blocks, magic strings, deep nesting, missing null checks

**Output:** Findings grouped by severity (Critical, Warning, Info) with file locations and suggested fixes.

---

### trellis-review

**Commands:** `/review`, `/kaizen`

Review phase tools following Trellis principles.

- `/review` - Code review with "AI drafts, you decide" mindset
- `/kaizen` - Continuous improvement retrospective

---

## Planning Plugins

### trellis-planning

**Commands:** `/plan`, `/research`, `/spec`

Planning phase tools for the two-document approach.

- `/plan` - Feature planning using TECH_SPECS + README approach
- `/research` - Technology/pattern exploration before building
- `/spec` - Generate comprehensive TECH_SPECS.md

---

### trellis-notes

**Command:** `/notes`

**Agent:** Notes Agent

Enriches your working notes with context.

**Workflow:**
1. Write thoughts in `.trellis/NOTES.md`
2. Run `/notes`
3. Get enhanced version with relevant files, patterns, and considerations

---

### trellis-arch

**Command:** `/arch`

**Agent:** Architecture Agent

Generates architecture documentation with Mermaid diagrams.

**Creates:** `ARCHITECTURE.md` with:
- System overview
- Component breakdown
- Data flow diagrams
- Mermaid visualizations

---

## Context Plugins

### trellis-context

**Command:** `/context-check`

Evaluates working context lifecycle.

**Assesses:**
- What context is helping vs. becoming noise
- Whether to continue or reset
- What to preserve vs. clear

---

## Plugin Structure

```
plugins/
├── trellis-core/
│   ├── .claude-plugin/
│   │   └── plugin.json
│   ├── skills/
│   │   └── trellis/
│   │       └── SKILL.md
│   └── agents/
│       └── trellis-setup.md
├── trellis-changelog/
│   ├── .claude-plugin/
│   │   └── plugin.json      # includes hooks config
│   ├── skills/
│   │   └── done/
│   │       └── SKILL.md
│   ├── agents/
│   │   └── changelog-agent.md
│   └── scripts/
│       └── log-completion.sh
├── trellis-build/
│   ├── .claude-plugin/
│   │   └── plugin.json      # includes hooks config
│   ├── agents/
│   │   └── build-runner.md
│   └── scripts/
│       └── capture-build.sh
├── trellis-vibe-check/
│   ├── .claude-plugin/
│   │   └── plugin.json
│   ├── skills/
│   │   └── vibe-check/
│   │       └── SKILL.md
│   └── agents/
│       └── redundancy-checker.md
├── trellis-notes/
│   ├── .claude-plugin/
│   │   └── plugin.json
│   ├── skills/
│   │   └── notes/
│   │       └── SKILL.md
│   └── agents/
│       └── notes-agent.md
├── trellis-arch/
│   ├── .claude-plugin/
│   │   └── plugin.json
│   ├── skills/
│   │   └── arch/
│   │       └── SKILL.md
│   └── agents/
│       └── architecture-agent.md
├── trellis-planning/
│   ├── .claude-plugin/
│   │   └── plugin.json
│   └── skills/
│       ├── plan/
│       │   └── SKILL.md
│       ├── research/
│       │   └── SKILL.md
│       └── spec/
│           └── SKILL.md
├── trellis-review/
│   ├── .claude-plugin/
│   │   └── plugin.json
│   └── skills/
│       ├── review/
│       │   └── SKILL.md
│       └── kaizen/
│           └── SKILL.md
└── trellis-context/
    ├── .claude-plugin/
    │   └── plugin.json
    └── skills/
        └── context-check/
            └── SKILL.md
```

---

## Trellis Principles

These plugins embody the core Trellis philosophy:

- **"Your principles are the trellis. AI is the accelerated growth."**
- **"Context is an asset with a lifecycle"** - managed by changelog and context plugins
- **"AI drafts, you decide"** - review plugin enforces verification
- **"Deterministic problems deserve deterministic solutions"** - hooks for repeatable tasks
- **"Small steps, frequent checks"** - session changelog tracks incremental progress
