# Trellis

A framework for building software with AI assistance.

---

## The Trellis Mindset

A trellis doesn't grow anything itself — it provides structure so growth goes where you want. Without a trellis, vines sprawl chaotically. With one, they climb intentionally.

**Your principles are the trellis. AI is the accelerated growth.**

AI amplifies whatever you give it. Clear structure produces focused output. Vague direction produces sprawl. The quality of what you build with AI is determined by the structure you provide before the first prompt.

---

## Think in Systems

The unit of work is changing. Tomorrow's developers won't hand-write functions and methods — they'll describe systems and let AI generate the implementation. The skill shifts from *how do I write this code* to *how do these systems connect*.

**Systems thinking means:**
- Seeing your application as interconnected services, not files of code
- Understanding data flow between boundaries (API ↔ Database ↔ UI ↔ External Services)
- Knowing which systems exist, what they're responsible for, and how they communicate
- Designing at the architecture level, delegating implementation to AI

**The new literacy:**
| Old Model | New Model |
|-----------|-----------|
| Write functions | Describe capabilities |
| Debug line by line | Validate system behavior |
| Know syntax | Know patterns |
| Read code | Read architecture |
| Implement solutions | Specify outcomes |

You don't need to know how every function works internally. You need to know what each system does, what it expects, and what it produces. AI handles the wiring. You handle the design.

---

## Core Principles

### Context is an asset with a lifecycle

Working context — changelogs, scratchpads, story docs — makes AI dramatically more useful. But context that helps you today becomes noise tomorrow. Create it deliberately, preserve it when valuable, clear it when done.

- **Continuity beats starting over.** An AI with context about your work outperforms one starting cold. Build systems that preserve continuity across sessions.
- **Know when to scrap and restart.** Continuity beats starting over — until it doesn't. If you're spending more time correcting than creating, a fresh start with lessons learned wins.
- **Keep standards global, context local.** Standards belong to the team and live in shared places. Working context belongs to the session and lives with you.

### AI drafts, you decide

Treat AI output as a first draft, not a final answer. The faster AI produces something, the more important your review becomes. Speed without verification is just faster mistakes.

- **Small steps, frequent checks.** Long autonomous runs produce impressive demos and expensive debugging sessions. Work in chunks small enough to verify.
- **Trust but verify.** AI will confidently produce plausible-looking code that doesn't work. The more confident it sounds, the more carefully you should check.

### Automate what should be repeatable

AI is non-deterministic. That's fine for problem-solving and creative work. But if something needs exact results every time — automate it programmatically. Scripts, hooks, pipelines. Save AI for work that benefits from flexibility.

### Make the right thing the easy thing

If clearing context before merging requires five manual steps, people will skip it. If syncing standards is automatic, people will stay current. Design for how people actually work.

### Constraint is a feature

Limitations force clarity. A 10-slot daily task list forces prioritization. A fixed canvas size forces composition decisions. Embrace constraints in your tools and your process — they produce better outcomes than infinite flexibility.

---

## Planning Phase

**Know exactly what you want before you build.**

The "one more feature" trap is real. Scope creep during building leads to inconsistent architecture, half-finished features, and wasted context. Do your discovery before you start.

### Research first

Before building, understand:
- Are the technologies/versions I'm using current?
- Is what I'm asking for even possible?
- What are the common patterns for achieving this?
- What are the edge cases and failure modes?

### Specify clearly

Get as close as possible to exactly what you want:
- Write technical specifications for complex features
- Create user stories with acceptance criteria
- Define the happy path and the error states
- Describe what "done" looks like

### Ask for multiples

Never accept the first answer. Ask for options:
- "Give me 3 ways I could implement X"
- "What are 3 possible causes for this problem?"
- "Show me 3 different architectures for this feature"

Seeing alternatives reveals tradeoffs and often surfaces better approaches.

---

## Building Phase

**Structure your communication for AI comprehension.**

AI has been trained on hierarchical, well-organized text. Work with that, not against it.

### Organize your prompts
- Group related information together
- Use clear hierarchical markers (`#`, XML tags, numbered lists)
- Put the most important information first
- Separate context from instructions from constraints

### Work incrementally
- Build one feature completely before starting the next
- Verify each piece works before adding more
- Commit working states frequently
- Keep the feedback loop tight

### When stuck, reset
- Constant errors create a pattern the AI learns to follow
- If you're going in circles, start a new session
- Bring lessons learned, not the broken context
- Sometimes "start over with what we learned" beats "keep fixing"

---

## Reviewing Phase

**Use what you build. Document what you learn.**

### Test like a user

You have to actually use your app to understand how someone navigates through it. Clicking through your own creation reveals:
- Flow problems specifications miss
- Friction points that seem fine in isolation
- Features that work but feel wrong

### Balance form and function

Technical specs ensure the app *functions* correctly — the LLM builds what it should. But does the *form* represent its capabilities well?
- Tech specs are for building (function)
- READMEs are for understanding (form)
- Both need attention

### Leave a trail

AI-assisted work can be opaque — even to you a week later. Document:
- What you asked for and why
- What worked and what didn't
- Decisions made and alternatives rejected

---

## Continuous Improvement

### Kaizen

Small, incremental improvements compound into significant results. After each project or session:
- What went well?
- What would I do differently?
- What should I add to my standards?

The trellis grows with you.

---

## My Setup: The Two-Document Trellis

Before I write any code, I create two documents. Together, they form the complete trellis — one side for the machine, one side for the human.

### TECH_SPECS.md — The Machine Side

This document tells the LLM exactly what to build. It's the **function** half of the trellis.

**Contains:**
- Data models and relationships
- API endpoints and their contracts
- Component hierarchy and responsibilities
- State management approach
- Technical constraints and requirements

**Purpose:** The LLM reads this and knows precisely what to implement. No ambiguity, no guessing. Every feature, every field, every interaction is specified before the first line of code.

### README.md — The Human Side

This document describes what a user can do and how they do it. It's the **form** half of the trellis.

**Contains:**
- User flows and navigation
- Feature descriptions from the user's perspective
- What each screen/view allows the user to accomplish
- The "why" behind the product

**Purpose:** Forces me to think through the actual experience. A feature might be technically correct (per the spec) but feel wrong in practice. Writing the README first catches this.

### Why Both?

```
TECH_SPECS.md          README.md
      │                    │
      │   ┌────────────┐   │
      └──▶│  The App   │◀──┘
          └────────────┘
      Function    +    Form
      (what it does)   (how it feels)
```

The tech spec ensures the app **works correctly**.
The README ensures the app **works as intended**.

These aren't the same thing. An app can function perfectly while being confusing to use. Writing both documents first — before any code — ensures alignment between implementation and experience.

**The trellis is complete when both sides meet.**

---

## Quick Reference

| Phase | Key Question |
|-------|--------------|
| **Planning** | Do I know exactly what I want? |
| **Building** | Am I working in verifiable chunks? |
| **Reviewing** | Have I used this myself? |
| **Always** | Is my context helping or hurting? |

---

*"Your principles are the trellis. AI is the accelerated growth."*
