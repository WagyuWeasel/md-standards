---
title: "Migration Guide: [FROM VERSION] to [TO VERSION]"
type: migration-guide
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: MIGRATION GUIDE
     PURPOSE: Walk users through upgrading between versions. Cover
     every breaking change, required code modifications, and the exact
     steps to migrate safely.
     AUDIENCE: Existing users upgrading to a new version.
     SOURCE: Stripe's versioning and migration patterns, Vercel's
     upgrade docs, and semver best practices. -->

# Migration Guide: [FROM VERSION] to [TO VERSION]

This guide covers everything you need to migrate from [PROJECT NAME]
[FROM VERSION] to [TO VERSION]. Read the entire guide before starting
the migration.

**Estimated time:** [TIME ESTIMATE, e.g., 15–30 minutes]

**Risk level:** [LOW / MEDIUM / HIGH]

## Table of Contents

- [Before You Begin](#before-you-begin)
- [Breaking Changes](#breaking-changes)
- [Step-by-Step Migration](#step-by-step-migration)
- [Deprecated Features](#deprecated-features)
- [New Features](#new-features)
- [Rollback Plan](#rollback-plan)
- [FAQ](#faq)

## Before you begin

<!-- Preconditions and preparation steps. -->

1. Back up your [DATABASE / CONFIGURATION / DATA].
2. Ensure you are running [FROM VERSION] — the migration path assumes
   this starting point. If you are on an older version, migrate to
   [FROM VERSION] first.
3. Review the [changelog](CHANGELOG.md) for a complete list of changes.
4. Run your test suite and confirm all tests pass before migrating.

## Breaking changes

<!-- List every breaking change. For each: what changed, why, and the
     exact code/config modification required. This is the most important
     section. -->

### [BREAKING CHANGE 1 TITLE]

**What changed:** [DESCRIBE THE CHANGE]

**Why:** [RATIONALE]

**Before ([FROM VERSION]):**

```text
[OLD CODE OR CONFIG]
```

**After ([TO VERSION]):**

```text
[NEW CODE OR CONFIG]
```

### [BREAKING CHANGE 2 TITLE]

**What changed:** [DESCRIBE THE CHANGE]

**Why:** [RATIONALE]

**Before:**

```text
[OLD CODE OR CONFIG]
```

**After:**

```text
[NEW CODE OR CONFIG]
```

## Step-by-Step migration

<!-- Numbered steps. Every command must be runnable. -->

### Step 1: update the package

```bash
[UPDATE COMMAND, e.g., npm install project-name@latest]
```

### Step 2: update configuration

[DESCRIBE WHAT TO CHANGE IN CONFIG FILES, with before/after examples.]

### Step 3: update code

[DESCRIBE CODE CHANGES REQUIRED. Reference the breaking changes above.]

### Step 4: run database migrations

```bash
[MIGRATION COMMAND IF APPLICABLE]
```

### Step 5: run tests

```bash
[TEST COMMAND]
```

Fix any failures before proceeding. Common issues are covered in the
[FAQ](#faq) below.

### Step 6: deploy

[DEPLOYMENT INSTRUCTIONS OR LINK TO DEPLOY DOCS]

## Deprecated features

<!-- Features that still work but will be removed in a future version.
     Give users time and guidance to move away. -->

| Feature | Deprecated In | Removal Target | Replacement |
|:--------|:-------------|:---------------|:------------|
| `[FEATURE/API]` | [VERSION] | [VERSION] | `[REPLACEMENT]` |
| `[FEATURE/API]` | [VERSION] | [VERSION] | `[REPLACEMENT]` |

## New features

<!-- Briefly highlight what's new. Link to full docs for each. -->

- **[FEATURE NAME]:** [ONE-LINE DESCRIPTION]. See [DOCS LINK].
- **[FEATURE NAME]:** [ONE-LINE DESCRIPTION]. See [DOCS LINK].

## Rollback plan

<!-- Always provide an escape route. -->

If the migration causes issues:

1. Stop the application.
2. Restore your database backup from [Step in Before You Begin].
3. Revert to the previous version:

   ```bash
   [ROLLBACK COMMAND, e.g., npm install project-name@FROM_VERSION]
   ```

4. Restart the application.
5. Open an issue with details about what went wrong.

## FAQ

### [COMMON MIGRATION QUESTION 1]

[ANSWER]

### [COMMON MIGRATION QUESTION 2]

[ANSWER]

### [COMMON MIGRATION QUESTION 3]

[ANSWER]
