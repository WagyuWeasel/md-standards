---
title: "ADR-[NUMBER]: [DECISION TITLE]"
type: adr
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: ADR (ARCHITECTURE DECISION RECORD)
     PURPOSE: Capture a single architectural decision — the context,
     options considered, decision made, and consequences. ADRs create
     a permanent record of why the system is built the way it is.
     AUDIENCE: Current and future engineers who need to understand
     past decisions.
     SOURCE: Michael Nygard's original ADR format, MADR (Markdown
     Architectural Decision Records), AWS ADR best practices, and
     Anthropic's prose-first style.
     KEY RULES: One ADR per decision. Keep it to 1-2 pages. Write as
     a conversation with a future developer. ADRs are append-only —
     don't edit old ones, supersede them with new ones. -->

# ADR-[NUMBER]: [DECISION TITLE]

**Status:** [PROPOSED / ACCEPTED / DEPRECATED / SUPERSEDED BY ADR-XXX]
**Date:** [YYYY-MM-DD]
**Decision makers:** [NAMES]

## Context

<!-- What forces are at play? What problem or opportunity prompted this
     decision? Include relevant constraints, requirements, and facts. -->

[DESCRIBE THE SITUATION — 2-3 paragraphs. What is the technical or
business context? What constraints exist? What triggered this decision?
Include specific metrics or evidence where available.]

## Decision

<!-- State the decision clearly in one sentence, then elaborate. -->

We will [DECISION — e.g., use PostgreSQL as our primary database].

[1-2 PARAGRAPHS expanding on the decision. Cover how it will be
implemented at a high level.]

## Options Considered

<!-- List each option with honest pros and cons. Show that the decision
     was made deliberately, not by default. -->

### Option 1: [NAME] (chosen)

[BRIEF DESCRIPTION]

- **Pros:** [ADVANTAGES]
- **Cons:** [DISADVANTAGES]

### Option 2: [NAME]

[BRIEF DESCRIPTION]

- **Pros:** [ADVANTAGES]
- **Cons:** [DISADVANTAGES]

### Option 3: [NAME]

[BRIEF DESCRIPTION]

- **Pros:** [ADVANTAGES]
- **Cons:** [DISADVANTAGES]

## Consequences

<!-- What happens as a result of this decision? List positive, negative,
     and neutral consequences. Be honest about trade-offs. -->

**Positive:**

- [CONSEQUENCE]
- [CONSEQUENCE]

**Negative:**

- [CONSEQUENCE — and how we plan to mitigate it]

**Neutral:**

- [CONSEQUENCE]

## Related

<!-- Link to related ADRs, RFCs, or documents. -->

- [ADR-XXX: RELATED DECISION](link)
- [RFC: RELATED PROPOSAL](link)

<!-- REAL-WORLD EXAMPLE: A completed ADR. -->

<!--
# ADR-003: Use PostgreSQL for Primary Data Store

**Status:** Accepted
**Date:** 2026-01-15
**Decision makers:** Jane Smith, Alex Chen

## Context

Our application needs a primary database for user accounts, projects,
and audit logs. We expect to reach 500K rows in the first year with
moderate write throughput (~200 writes/second at peak). We need ACID
transactions for financial data and strong ecosystem support for our
Node.js stack.

## Decision

We will use PostgreSQL 16 as our primary data store, hosted on AWS
RDS with Multi-AZ deployment.

## Options Considered

### Option 1: PostgreSQL (chosen)
Mature, ACID-compliant, excellent Node.js support via pg library.
- Pros: Strong ecosystem, JSON support, proven at scale
- Cons: Requires operational expertise for tuning

### Option 2: MySQL
Widely used, good performance for read-heavy workloads.
- Pros: Familiar to team, good hosting options
- Cons: Weaker JSON support, less flexible indexing

### Option 3: MongoDB
Document store, flexible schema.
- Pros: Schema flexibility, easy to start
- Cons: No ACID transactions across documents, harder to enforce
  data integrity for financial records

## Consequences

Positive:
- ACID transactions protect financial data integrity
- JSONB columns give us document flexibility where needed

Negative:
- Team needs to learn PostgreSQL tuning (mitigated by using managed RDS)
-->
