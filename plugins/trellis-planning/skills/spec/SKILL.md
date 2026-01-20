---
name: spec
description: Generate a TECH_SPECS.md document for a feature or project
disable-model-invocation: true
---

# Trellis Tech Spec Generator

Create a technical specification document following the Trellis methodology.

## What to Include

Generate a TECH_SPECS.md that contains:

### 1. Data Models and Relationships
- Entity definitions with all fields
- Relationships between entities
- Constraints and validations
- Database schema if applicable

### 2. API Endpoints and Contracts
- Endpoint paths and methods
- Request/response schemas
- Authentication requirements
- Error responses

### 3. Component Hierarchy and Responsibilities
- Component tree structure
- Props and state for each component
- Event handling
- Component boundaries

### 4. State Management Approach
- Global vs local state decisions
- State shape and structure
- Actions/mutations
- Side effects handling

### 5. Technical Constraints and Requirements
- Performance requirements
- Security requirements
- Compatibility requirements
- External dependencies

## Format

Use clear hierarchical markers. Every feature, every field, every interaction should be specified. The goal is: "The LLM reads this and knows precisely what to implement. No ambiguity, no guessing."

## Before You Generate

Ask me about:
- The core features and their priority
- User types and permissions
- Integration requirements
- Non-functional requirements

Don't generate until you understand the full scope.
