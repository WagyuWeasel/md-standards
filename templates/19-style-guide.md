---
title: "[PROJECT NAME] Style Guide"
type: style-guide
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: STYLE GUIDE
     PURPOSE: Define writing and formatting standards so all contributors
     produce consistent documentation and content. A style guide is the
     single source of truth for "how we write."
     AUDIENCE: Anyone who writes documentation, UI text, blog posts,
     or other content for the project.
     SOURCE: Anthropic's prose-first and minimal-formatting standards,
     Stripe's documentation-as-product philosophy, Google developer
     documentation style guide, and Microsoft Writing Style Guide. -->

# [PROJECT NAME] Style Guide

This guide defines the writing and formatting standards for all
[PROJECT NAME] documentation. Follow these rules to keep content
consistent, clear, and accessible.

## Table of Contents

- [Voice and Tone](#voice-and-tone)
- [Language](#language)
- [Formatting](#formatting)
- [Code in Documentation](#code-in-documentation)
- [Images and Media](#images-and-media)
- [Terminology](#terminology)
- [File Naming](#file-naming)

## Voice and Tone

<!-- Define how your docs should "sound." This shapes every sentence. -->

Write as if you're explaining something to a knowledgeable colleague:
direct, clear, and respectful of the reader's time.

- **Active voice:** "The function returns a list" not "A list is
  returned by the function."
- **Imperative mood for instructions:** "Run the command" not "You
  should run the command."
- **Present tense:** "The API returns JSON" not "The API will return
  JSON."
- **Second person:** Address the reader as "you."
- **No filler:** Cut words like "simply," "just," "basically," and
  "obviously." If something were obvious, you wouldn't need to
  document it.

## Language

### Word Choice

- Use plain language. Prefer short, common words over long, formal ones.
- [TERM TO USE] not [TERM TO AVOID] (e.g., "use" not "utilize")
- [TERM TO USE] not [TERM TO AVOID] (e.g., "start" not "commence")
- [TERM TO USE] not [TERM TO AVOID]

### Abbreviations and Acronyms

Spell out on first use, then abbreviate: "application programming
interface (API)." After that, use the abbreviation. Never assume the
reader knows what an acronym means.

### Inclusive Language

- Use gender-neutral language: "they" as a singular pronoun is fine.
- Avoid "whitelist/blacklist" — use "allowlist/denylist."
- Avoid "master/slave" — use "primary/replica" or "main/secondary."
- Avoid ableist language: "check" not "sanity check."

## Formatting

### Headings

- Use sentence case: "Configure the database" not "Configure the
  Database."
- Never skip heading levels. H1 → H2 → H3 → H4.
- One H1 per document matching the front matter `title`.

### Prose vs. Lists

Write in flowing paragraphs by default. Use bullet points only for
genuinely discrete items where three or more items are parallel in
structure. Each bullet must be at least one full sentence.

### Bold and Italics

- **Bold** for UI elements: "Click **Save**."
- `Code font` for file names, commands, variables, and paths.
- Avoid italics in technical documentation — they reduce readability.

### Links

- Use descriptive text: "See the [configuration reference](config.md)"
  not "Click [here](config.md)."
- Use relative links for internal pages, absolute URLs for external.
- Use reference-style links when a document has five or more external
  URLs.

## Code in Documentation

### Code Blocks

Always use fenced code blocks with a language identifier:

````text
```python
result = calculate(x, y)
```
````

Never use indented code blocks.

### Inline Code

Use backticks for file names (`README.md`), commands (`npm install`),
variables (`API_KEY`), function names (`getData()`), and paths
(`/etc/config`).

### Examples

Every code example should be copy-paste-runnable. Include:

- All necessary imports
- Realistic variable names (not `foo`, `bar`)
- Expected output as a comment or separate block

## Images and Media

- Always include descriptive alt text: `![API flow diagram](img.png)`
- Store images in a `docs/images/` directory
- Use PNG for screenshots, SVG for diagrams
- Keep file sizes under [SIZE LIMIT, e.g., 500KB]
- Never use images of text — use actual text instead

## Terminology

<!-- List your project's preferred terms. Link to the glossary for
     full definitions. -->

| Use | Don't Use | Why |
|:----|:----------|:----|
| [PREFERRED TERM] | [AVOIDED TERM] | [REASON] |
| [PREFERRED TERM] | [AVOIDED TERM] | [REASON] |
| [PREFERRED TERM] | [AVOIDED TERM] | [REASON] |

For the full list of defined terms, see the [Glossary](glossary.md).

## File Naming

- Lowercase with hyphens: `setup-guide.md`, not `Setup Guide.md` or
  `setup_guide.md`
- Be descriptive: `api-authentication.md` not `auth.md`
- No spaces, no underscores, no uppercase
