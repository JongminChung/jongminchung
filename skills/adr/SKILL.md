---
name: adr
description: Create and update Architecture Decision Records (ADR) using a fixed template with the sections Title, Status, Context, Decision, Outcome, Governance. Use when the user requests ADR drafting, ADR refinement, decision-log standardization, or architecture rationale documentation. If a C4 diagram is required, invoke the plantuml-diagram-generator skill to produce compliant C4 PlantUML and include it in the ADR.
---

# ADR Skill

Generate ADR content with the exact section order below:

1. Title
2. Status
3. Context
4. Decision
5. Outcome
6. Governance

## Mandatory Naming Rules

- Write `Title` as a short noun phrase.
- Use this title format: `NNN: <ADR title>`.
- Use a 3-digit ADR number (`001`, `002`, ...).
- Keep title concise and searchable.
- Use this filename format: `NNN_<ADR_title_with_underscores>.md`.
- Replace spaces in filename title with underscores.

## Output Format

Return Markdown with these headings exactly:

```markdown
<!-- Use title -->

# `NNN: <ADR title>`

## 상태

## 맥락

## 결정

## 결과

## 거버넌스
```

Include a filename suggestion line before the document body:

```markdown
Filename: NNN\_<ADR_title_with_underscores>.md
```

## Authoring Rules

- Use concise, testable statements.
- Keep rationale explicit in `Context` and `Decision`.
- Set `Status` to `RFC` by default.
- Include an explicit response deadline in `Status` (for example: `Status: RFC (Response due: 2026-03-20)`).
- Status lifecycle: `RFC` -> `Proposed` after all stakeholders provide opinions -> `In Progress` after approval.
- Document measurable impact in `Outcome` (benefits, trade-offs, risks).
- Record owner, review cadence, and policy constraints in `Governance`.
- Place follow-ups, open questions, and references in `Notes`.
- Preserve section order; do not omit sections.

## Section Intent

- 상태 (`Context`): Describe the specific context and constraints that shape the decision.
- 결정 (`Decision`): State the decision clearly, use active voice, and maintain an authoritative tone.
- 결과 (`Outcome`): Explain consequences and impact so all stakeholders, including affected teams, can understand the decision and its effects.
- 거버넌스 (`Governance`): Describe how the organization will ensure ongoing and future adherence to the decision.

## C4 Diagram Integration

If the ADR needs architecture visualization:

- Use `plantuml-diagram-generator` to create C4 PlantUML.
- Require valid C4 include directives and `LAYOUT_WITH_LEGEND()` for C4 diagrams.
- Embed the generated diagram in `Notes` or an appendix section if requested.
- If no diagram is requested, do not add one by default.

## Minimal Checklist

- All required sections exist and are non-empty.
- Title follows `NNN: <ADR title>` and is a short noun phrase.
- Filename follows `NNN_<ADR_title_with_underscores>.md`.
- `Status` is `RFC` and includes a response deadline.
- `Decision` is actionable, specific, active voice, and authoritative.
- `Outcome` includes at least one trade-off or risk.
- `Governance` defines owner and review trigger.
- If C4 is present, diagram source is syntactically complete (`@startuml` to `@enduml`).
