---
description: Complete current feature/story and transfer session changelog to main changelog
---

# Done - Complete Feature

Mark the current feature/story as complete and transfer the session changelog to the main changelog.

## Your Task

Use the changelog agent to:

1. **Transfer Session Changelog**
   - Read `.trellis/SESSION_CHANGELOG.md`
   - Append its contents to the root `CHANGELOG.md` with appropriate date/version header
   - Clear `.trellis/SESSION_CHANGELOG.md` (reset to empty with header)

2. **Compact Changelog if Needed**
   - If `CHANGELOG.md` exceeds 400 lines, compact older entries
   - Preserve recent entries in full detail
   - Summarize older entries

3. **Archive Story (Optional)**
   - Ask if the user wants to clear `.trellis/STORY.md` for the next feature
   - If yes, reset to blank template

4. **Report Summary**
   - Confirm what was transferred
   - Report current changelog size
   - Confirm if compaction occurred
