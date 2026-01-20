---
name: review
description: Review code or features using Trellis principles - verify, don't trust
disable-model-invocation: true
---

# Trellis Review

Review the code or feature with the Trellis mindset: "AI drafts, you decide."

## Review Checklist

### 1. Verification (Trust but Verify)
- Does the code actually do what it claims?
- Are there confident-sounding patterns that don't actually work?
- Test the happy path AND the error states

### 2. Small Steps Check
- Is this a verifiable chunk of work?
- Can each piece be tested independently?
- Are there long autonomous runs that need breaking up?

### 3. User Experience (Test Like a User)
- Walk through the actual user flow
- Identify friction points that seem fine in isolation
- Check: does it work correctly AND work as intended?

### 4. Form vs Function Balance
- Function: Does it work correctly? (matches TECH_SPECS)
- Form: Does it feel right? (matches README intent)
- Flag any gaps between implementation and experience

### 5. Trail Documentation
- Is it clear what was asked for and why?
- Are decisions documented with alternatives rejected?
- Will this be understandable in a week?

## Output

Provide:
- Issues found (categorized by severity)
- Specific suggestions for improvement
- What's working well
- Questions for the developer

Remember: "Speed without verification is just faster mistakes."
