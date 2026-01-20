# Technical Specification

> This document tells the LLM exactly what to build. Be precise. Be complete. Ambiguity here becomes bugs later.

---

## Project Overview

**Name:** [Project Name]

**One-liner:** [What this app does in one sentence]

**Platform:** [iOS / macOS / Web / API / etc.]

**Tech Stack:**
- Language: [Swift / TypeScript / Python / etc.]
- UI Framework: [SwiftUI / React / etc.]
- Data Layer: [SwiftData / PostgreSQL / etc.]
- Other: [CloudKit / Cloudflare Workers / etc.]

**Target Version:** [iOS 18+ / Node 20+ / etc.]

---

## Data Models

> Define every entity, its properties, and relationships. This is the foundation.

### [ModelName]

| Property | Type | Required | Default | Description |
|----------|------|----------|---------|-------------|
| `id` | UUID | Yes | auto | Unique identifier |
| `name` | String | Yes | - | Display name |
| `createdAt` | Date | Yes | now | Creation timestamp |
| `updatedAt` | Date | Yes | now | Last modified |
| | | | | |

**Relationships:**
- `[relatedModel]`: [1:1 / 1:many / many:many] — [description]

**Computed Properties:**
- `[propertyName]`: [return type] — [what it computes]

**Constraints:**
- [Any validation rules, unique constraints, etc.]

---

### [ModelName2]

| Property | Type | Required | Default | Description |
|----------|------|----------|---------|-------------|
| | | | | |

**Relationships:**
-

---

## Enums

> Define all enumerated types used across models.

### [EnumName]

| Case | Raw Value | Description |
|------|-----------|-------------|
| `case1` | "case1" | |
| `case2` | "case2" | |

---

## API Endpoints

> For apps with a backend. Skip if purely local.

### [Resource Name]

| Method | Path | Description | Auth |
|--------|------|-------------|------|
| GET | `/api/[resource]` | List all | Yes |
| GET | `/api/[resource]/:id` | Get by ID | Yes |
| POST | `/api/[resource]` | Create new | Yes |
| PUT | `/api/[resource]/:id` | Update | Yes |
| DELETE | `/api/[resource]/:id` | Delete | Yes |

**Request Body (POST/PUT):**
```json
{
  "field": "type"
}
```

**Response:**
```json
{
  "id": "uuid",
  "field": "value"
}
```

---

## Views / Screens

> Define each screen, what it displays, and what actions are available.

### [ScreenName]

**Purpose:** [What this screen is for]

**Route/Navigation:** [How user gets here]

**Displays:**
- [Data element 1]
- [Data element 2]

**Actions:**
- [ ] [Action 1] — [what happens]
- [ ] [Action 2] — [what happens]

**State:**
- `[stateName]`: [type] — [purpose]

**Components Used:**
- [ComponentName]

---

### [ScreenName2]

**Purpose:**

**Route/Navigation:**

**Displays:**
-

**Actions:**
- [ ]

---

## Components

> Reusable UI components.

### [ComponentName]

**Purpose:** [What this component does]

**Props:**
| Prop | Type | Required | Description |
|------|------|----------|-------------|
| | | | |

**Behavior:**
- [How it responds to interaction]

---

## State Management

> How data flows through the app.

### Global State

| State | Type | Purpose |
|-------|------|---------|
| | | |

### Local State (per screen)

**[ScreenName]:**
- `[state]`: [type] — [purpose]

---

## User Flows

> Step-by-step paths through the app.

### [Flow Name] (e.g., "Create New Item")

1. User [action]
2. App [response]
3. User [action]
4. App [response]
5. **Result:** [end state]

**Error States:**
- If [condition]: [what happens]

---

## Business Logic

> Rules and calculations that aren't obvious from the data model.

### [Logic Name]

**Input:** [what it receives]

**Process:**
1. [Step 1]
2. [Step 2]

**Output:** [what it produces]

**Edge Cases:**
- [Case]: [handling]

---

## External Integrations

> Third-party services, APIs, SDKs.

### [Service Name]

**Purpose:** [Why we use this]

**SDK/API:** [Package name or API endpoint]

**Authentication:** [How we auth]

**Usage:**
- [What we use it for]

---

## Persistence & Sync

### Local Storage

- **Technology:** [SwiftData / Core Data / localStorage / etc.]
- **Location:** [App container / App Group / etc.]

### Cloud Sync

- **Technology:** [CloudKit / Firebase / custom API / etc.]
- **Sync Strategy:** [automatic / manual / on-demand]
- **Conflict Resolution:** [last-write-wins / merge / etc.]

---

## Security & Privacy

### Authentication

- [Auth method: none / iCloud / OAuth / etc.]

### Data Protection

- [What data is encrypted]
- [What data is stored locally only]

### Permissions Required

| Permission | Reason |
|------------|--------|
| [e.g., Camera] | [Why needed] |

---

## Error Handling

### Error Types

| Error | Cause | User Message | Recovery |
|-------|-------|--------------|----------|
| | | | |

### Offline Behavior

- [What works offline]
- [What requires connection]
- [How we handle transition]

---

## Performance Targets

| Metric | Target |
|--------|--------|
| App launch | < 1s |
| Screen transition | < 0.3s |
| API response | < 2s |
| Offline capability | [Yes/No/Partial] |

---

## Constraints & Requirements

### Must Have (v1)
- [ ] [Feature]
- [ ] [Feature]

### Should Have (v1.1)
- [ ] [Feature]

### Won't Have (explicitly out of scope)
- [ ] [Feature] — [why excluded]

---

## Open Questions

> Decisions that need to be made before or during implementation.

- [ ] [Question]
- [ ] [Question]

---

## Appendix

### Glossary

| Term | Definition |
|------|------------|
| | |

### References

- [Link to design files]
- [Link to API docs]
- [Link to similar implementations]

---

*Last updated: [Date]*
