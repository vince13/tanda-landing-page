# ForgeSpace Demo Agent — Engineering Spec

**Purpose:** Prove the integration story: "ForgeSpace runs agents that call ResumeAI."  
**Audience:** Investors, technical diligence.

---

## Overview

Build a simple job-search helper agent that runs on ForgeSpace and calls the ResumeAI API. When a user asks for resume help or job-search guidance, the agent invokes ResumeAI (or a proxy) and returns structured assistance.

---

## Requirements

### Functional
- Agent runs in ForgeSpace sandbox
- Agent can call ResumeAI (or resume-optimization) API
- Simple conversational interface: user asks → agent responds with career/resume guidance
- Flow demonstrates: User → ForgeSpace (agent) → ResumeAI → response

### Non-functional
- Demo-ready: < 5 min to show end-to-end
- No sensitive data; use mock/sample if needed
- Clear logs or visibility into the API call for diligence

---

## Suggested Flow

1. **User input:** "Help me optimize my resume for a product manager role"
2. **Agent (in ForgeSpace):** Parses intent, calls ResumeAI/resume API with job title + context
3. **ResumeAI:** Returns suggestions, keywords, or ATS tips
4. **Agent:** Formats and returns to user

Alternatively: Job-search agent that takes a target role and returns "suggested next steps" (could be static or API-backed).

---

## Technical Notes

- ForgeSpace provides the runtime; agent is a skill/workflow
- ResumeAI API: authenticate, pass job context, receive structured response
- If ResumeAI API is not yet exposed: use a stub that returns sample career guidance; the demo still proves "agent → external service" integration

---

## Success Criteria

- [ ] Agent deploys and runs on ForgeSpace
- [ ] Agent successfully calls ResumeAI (or stub) and returns useful output
- [ ] Demo can be shown in < 5 minutes
- [ ] Security: no user PII; agent runs in sandbox with resource limits

---

## Owner

Engineering. Reference: ForgeSpace codebase, ResumeAI API (if available).
