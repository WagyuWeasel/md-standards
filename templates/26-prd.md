---
title: "PRD: [FEATURE NAME]"
type: prd
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: PRD (PRODUCT REQUIREMENTS DOCUMENT)
     PURPOSE: Define what a feature does, who it's for, and how success
     is measured. A PRD aligns engineering, design, and product on what
     to build before implementation starts.
     AUDIENCE: Engineers, designers, QA, and stakeholders.
     SOURCE: Stripe's product spec format, Anthropic's clear-language
     standards, and industry PRD best practices. -->

# PRD: [FEATURE NAME]

**Author:** [NAME]
**Status:** [DRAFT / IN REVIEW / APPROVED / IN PROGRESS / SHIPPED]
**Target release:** [VERSION OR DATE]
**Last updated:** [DATE]

## Summary

<!-- One paragraph. What is this feature and why are we building it? -->

[FEATURE NAME] allows [WHO] to [DO WHAT] so that [BENEFIT/OUTCOME].
We are building this because [BUSINESS JUSTIFICATION — user demand,
revenue impact, competitive pressure, or strategic alignment].

## Table of Contents

- [Problem Statement](#problem-statement)
- [Goals and Non-Goals](#goals-and-non-goals)
- [User Stories](#user-stories)
- [Requirements](#requirements)
- [Design](#design)
- [Success Metrics](#success-metrics)
- [Timeline](#timeline)
- [Open Questions](#open-questions)

## Problem Statement

<!-- What problem exists today? Who is affected? What evidence do you
     have that this is worth solving? -->

[2-3 PARAGRAPHS describing the current pain point. Include data:
support tickets, user research findings, churn analysis, or competitive
gaps.]

## Goals and Non-Goals

### Goals

- [GOAL 1 — specific and measurable]
- [GOAL 2]
- [GOAL 3]

### Non-Goals

<!-- Explicitly stating what this feature will NOT do prevents scope
     creep and misaligned expectations. -->

- [NON-GOAL 1 — and why it's out of scope]
- [NON-GOAL 2]

## User Stories

<!-- Write from the user's perspective. Each story should be testable. -->

| ID | As a... | I want to... | So that... |
|:---|:--------|:-------------|:-----------|
| US-1 | [ROLE] | [ACTION] | [BENEFIT] |
| US-2 | [ROLE] | [ACTION] | [BENEFIT] |
| US-3 | [ROLE] | [ACTION] | [BENEFIT] |

## Requirements

### Functional Requirements

| ID | Requirement | Priority | Notes |
|:---|:------------|:---------|:------|
| FR-1 | [WHAT THE SYSTEM MUST DO] | Must have | |
| FR-2 | [WHAT THE SYSTEM MUST DO] | Must have | |
| FR-3 | [WHAT THE SYSTEM MUST DO] | Should have | |
| FR-4 | [WHAT THE SYSTEM MUST DO] | Nice to have | |

### Non-Functional Requirements

| Requirement | Target |
|:------------|:-------|
| Performance | [e.g., Page load < 2s at P95] |
| Availability | [e.g., 99.9% uptime] |
| Security | [e.g., SOC 2 compliant, data encrypted at rest] |
| Accessibility | [e.g., WCAG 2.1 AA] |
| Scalability | [e.g., Support 10K concurrent users] |

### Acceptance Criteria

<!-- For each key user story, define the specific conditions that must
     be true for the feature to be considered complete. -->

**US-1:**

- [ ] [CRITERION — e.g., User can create an account with email and password]
- [ ] [CRITERION — e.g., Validation errors are displayed inline]
- [ ] [CRITERION — e.g., Confirmation email is sent within 30 seconds]

**US-2:**

- [ ] [CRITERION]
- [ ] [CRITERION]

## Design

<!-- Link to or embed design artifacts. Keep the PRD focused on "what"
     not "how" — detailed implementation belongs in tech specs. -->

**Wireframes/Mockups:** [LINK TO FIGMA, SKETCH, OR IMAGE]

**Technical spec:** [LINK TO ARCHITECTURE DOC OR TECH SPEC]

**API changes:** [SUMMARY OF NEW OR MODIFIED ENDPOINTS]

## Success Metrics

<!-- How will you know this feature succeeded? Define metrics with
     targets and measurement methods. -->

| Metric | Current | Target | How Measured |
|:-------|:--------|:-------|:-------------|
| [METRIC, e.g., Task completion rate] | [VALUE] | [VALUE] | [METHOD] |
| [METRIC, e.g., Support tickets/week] | [VALUE] | [VALUE] | [METHOD] |
| [METRIC, e.g., User adoption at 30 days] | N/A | [VALUE] | [METHOD] |

## Timeline

| Milestone | Date | Owner |
|:----------|:-----|:------|
| PRD approved | [DATE] | [NAME] |
| Design complete | [DATE] | [NAME] |
| Development start | [DATE] | [NAME] |
| QA start | [DATE] | [NAME] |
| Ship | [DATE] | [NAME] |

## Open Questions

1. [QUESTION THAT NEEDS RESOLUTION BEFORE OR DURING DEVELOPMENT]
2. [QUESTION]
3. [QUESTION]
