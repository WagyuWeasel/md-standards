---
name: md-standards
description: >
  Gold-standard Markdown template system with 32 types. Triggers on any
  request to create, generate, write, draft, check, audit, or improve a
  Markdown file. Also triggers on: readme, contributing guide, changelog,
  license, code of conduct, security policy, support guide, api docs,
  architecture doc, setup guide, config reference, migration guide,
  troubleshooting, runbook, wiki page, knowledge base article, faq,
  glossary, style guide, blog post, tutorial, report, proposal, rfc,
  meeting notes, email template, prd, adr, roadmap, retrospective,
  journal, checklist, zettelkasten, or any mention of "md-standards"
  or "markdown template."
version: "2.0.0"
---

# MD-Standards

A system of 32 gold-standard Markdown templates with universal
formatting rules, hosted on GitHub and routed by Claude. This single
file contains everything Claude needs: the routing table, all
formatting rules, the complete style guide, and instructions for
generating, auditing, and improving Markdown files.

## Table of Contents

- [How This Works](#how-this-works)
- [Routing Table](#routing-table)
- [Universal Rules](#universal-rules)
- [Style Guide](#style-guide)
- [Dos and Don'ts](#dos-and-donts)
- [Execution Process](#execution-process)
- [Audit Process](#audit-process)
- [New Template Process](#new-template-process)

## How This Works

This skill routes Markdown requests to one of 32 template types hosted
on GitHub. Claude matches the user's request to the correct template
using the routing table, fetches the template via its raw GitHub URL,
applies all rules from this file, and generates a complete `.md` file.
This file is the single source of truth for all Markdown standards.

## Routing Table

| ID | Type | Trigger Phrases | Template URL |
|:---|:-----|:----------------|:-------------|
| 01 | README | readme, project overview, repo intro | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/01-readme.md` |
| 02 | Contributing Guide | contributing, how to contribute, PR process | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/02-contributing.md` |
| 03 | Changelog | changelog, release notes, version history | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/03-changelog.md` |
| 04 | License | license, licensing, usage terms | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/04-license.md` |
| 05 | Code of Conduct | code of conduct, community guidelines | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/05-code-of-conduct.md` |
| 06 | Security Policy | security policy, vulnerability reporting | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/06-security.md` |
| 07 | Support Guide | support, help guide, how to get help | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/07-support.md` |
| 08 | API Documentation | api docs, api reference, endpoints | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/08-api-docs.md` |
| 09 | Architecture Document | architecture, system design, system overview | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/09-architecture.md` |
| 10 | Setup / Installation Guide | setup guide, installation, getting started | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/10-setup-guide.md` |
| 11 | Configuration Reference | config, configuration, config reference | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/11-config-reference.md` |
| 12 | Migration Guide | migration, upgrade guide, breaking changes | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/12-migration-guide.md` |
| 13 | Troubleshooting Guide | troubleshooting, common issues, debugging | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/13-troubleshooting.md` |
| 14 | Runbook / Playbook | runbook, playbook, incident response | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/14-runbook.md` |
| 15 | Wiki Page | wiki, wiki page, internal knowledge | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/15-wiki-page.md` |
| 16 | Knowledge Base Article | kb article, knowledge base, help article | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/16-kb-article.md` |
| 17 | FAQ | faq, frequently asked questions, q&a | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/17-faq.md` |
| 18 | Glossary | glossary, terms, definitions, terminology | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/18-glossary.md` |
| 19 | Style Guide | style guide, writing guide, formatting standards | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/19-style-guide.md` |
| 20 | Blog Post | blog post, blog, article, post | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/20-blog-post.md` |
| 21 | Tutorial / How-To | tutorial, how-to, walkthrough, guide | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/21-tutorial.md` |
| 22 | Report / Brief | report, brief, findings, analysis | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/22-report.md` |
| 23 | Proposal / RFC | proposal, rfc, request for comments, design doc | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/23-rfc.md` |
| 24 | Meeting Notes | meeting notes, meeting minutes, standup notes | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/24-meeting-notes.md` |
| 25 | Email / Newsletter | email template, newsletter, email draft | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/25-email-template.md` |
| 26 | PRD | prd, product requirements, feature spec | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/26-prd.md` |
| 27 | ADR | adr, architecture decision record, decision record | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/27-adr.md` |
| 28 | Roadmap | roadmap, product roadmap, timeline, milestones | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/28-roadmap.md` |
| 29 | Retrospective | retrospective, retro, sprint retro, postmortem | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/29-retrospective.md` |
| 30 | Journal Entry | journal, daily log, reflection, daybook | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/30-journal.md` |
| 31 | Checklist / Task List | checklist, task list, todo, to-do | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/31-checklist.md` |
| 32 | Zettelkasten Note | zettelkasten, atomic note, evergreen note | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/32-zettelkasten.md` |

## Universal Rules

Every file generated or audited by this system must follow all rules
below. These are derived from CommonMark 0.31.2, GitHub Flavored
Markdown, markdownlint, Google's Markdown style guide, GitHub's
documentation standards, and best practices from Anthropic, Stripe,
and Vercel.

### Specification Compliance

1. **CommonMark first.** All files must comply with CommonMark spec
   v0.31.2. GFM extensions (tables, task lists, strikethrough,
   autolinks) are permitted where needed.
2. **markdownlint clean.** All files must pass `markdownlint` with
   zero warnings using the project's `.markdownlint.json` config.
3. **UTF-8 encoding.** All files must be UTF-8 with no BOM. Line
   endings: LF (Unix-style), never CRLF.

### File Start and Front Matter

1. **Line 1 must be `---`.** Nothing before it. No blank line, no
   text, no download link.
2. **YAML front matter is mandatory.** Every file starts with YAML
   front matter enclosed in `---` fences. Six required fields:

   ```yaml
   ---
   title: "Document Title"
   type: template-type
   version: "1.0.0"
   created: 2026-01-01
   updated: 2026-01-01
   status: draft
   ---
   ```

3. **Optional fields** (include when relevant): `author`, `tags`,
   `audience`, `tldr`, `related`, `changelog`.

### Headings

1. **Single H1.** Every file has exactly one `# Title` heading,
   matching the front matter `title`.
2. **Heading hierarchy.** Never skip levels. H1 then H2 then H3 then
   H4. No orphan headings.
3. **ATX style only.** Use `# Heading` with hash marks. Never use
   underline-style (setext) headings.
4. **Space after hash.** Always `## Heading` not `##Heading`.
5. **Sentence case.** Write "Configure the database" not "Configure
   the Database." Capitalise only the first word and proper nouns.
6. **Unique heading names.** Each heading should be unique and fully
   descriptive so auto-generated anchor links are clear.
7. **Table of Contents.** Required for any file with 4 or more H2
   sections. Format: linked list under `## Table of Contents`.

### Spacing and Whitespace

1. **One blank line** before and after every heading, code block,
   list, blockquote, and table. Never double blank lines anywhere.
2. **Line length.** Soft wrap at 80 characters for prose. No hard
   limit for tables, URLs, code blocks, or headings. Lines that are
   long only because of a URL are permitted.
3. **Trailing whitespace.** None. No trailing spaces on any line.
   Do not use trailing spaces for line breaks.
4. **Final newline.** Every file ends with exactly one newline
   character.

### Prose and Content Quality

1. **Lead with purpose.** First paragraph after H1 states what this
   document is, who it's for, and why it exists. No preamble, no
   "Welcome to..." openers.
2. **Active voice.** Default to active voice. Use imperative mood for
   instructions: "Run the command" not "The command should be run."
3. **Present tense.** Write "The API returns JSON" not "The API will
   return JSON."
4. **Second person.** Address the reader as "you."
5. **Cut filler words.** Remove "simply," "just," "basically,"
   "easily," and "obviously."
6. **Concise prose.** Write in clear, flowing paragraphs. Reserve
   bullet points for genuinely discrete items (3 or more items that
   are parallel in structure). Every bullet must be at least one full
   sentence.
7. **Progressive disclosure.** Summary or TL;DR up top. Details
   below. Use collapsible `<details>` sections for advanced content.
8. **One file, one purpose, one audience.** Never mix audiences or
   purposes in a single file.
9. **One sentence per line** (recommended). Makes diffs cleaner and
   easier to review. Rendered output looks the same.

### Code

1. **Fenced code blocks.** Always use triple backticks with a language
   identifier: `bash`, `python`, `yaml`, `json`, `text`, etc. Never
   use indented code blocks.
2. **Runnable examples.** Code examples should be copy-paste-runnable.
   Include expected output in a separate block or comment.
3. **Inline code.** Use backticks for file names, commands, variables,
   keys, and paths: `README.md`, `npm install`, `API_KEY`.
4. **Escape newlines in long commands.** Use a trailing backslash for
   commands that wrap across lines.

### Links

1. **Descriptive link text always.** Never "click here," "here," or
   bare URLs as link text. Write links as natural parts of sentences.
2. **Relative links** for internal references within the same repo.
   Absolute URLs for external resources.
3. **Avoid `../` relative paths.** Use paths from the repo root.
   Deep relative paths break when files move.
4. **Reference-style links** for documents with 5 or more external
   URLs. Define reference links after first use, before the next
   heading. Keeps prose readable and tables compact.
5. **Shorten links.** Strip unnecessary query parameters and tracking
   codes from URLs.
6. **No orphan links.** Every `[text](url)` must resolve.

### Images

1. **Alt text on all images.** `![Descriptive alt text](image.png)`.
   Never empty alt text.
2. **Use images sparingly.** Prefer text. Images can't be searched,
   diffed, or updated easily.
3. **PNG for screenshots, SVG for diagrams.** Store in a
   `docs/images/` directory.

### Tables

1. **Tables for tabular data only.** If your data could be a list,
   use a list. Tables are harder to write, read, and maintain.
2. **Readable in raw text.** Align columns where practical. Left-align
   by default. Every row starts and ends with a pipe `|`.
3. **Keep cells short.** Use reference-style links inside tables. If a
   cell needs a paragraph, the data doesn't belong in a table.

### HTML and Portability

1. **No HTML unless necessary.** Use HTML only for features Markdown
   cannot express: `<details>`, `<summary>`, `<kbd>`, `<br>`, `<sub>`,
   `<sup>`. Never for styling, layout, or tables.
2. **No platform-specific syntax.** Avoid features that only render on
   one platform. Stick to CommonMark plus GFM.

### Naming and Organization

1. **File naming.** Lowercase, hyphens for spaces: `setup-guide.md`,
   not `Setup Guide.md` or `setup_guide.md`.
2. **Template file pattern.** `NN-name.md` where NN is a two-digit
   number from `01` to `32`.

## Style Guide

### Voice and Tone

Write as if explaining something to a knowledgeable colleague: direct,
clear, and respectful of the reader's time. No filler, no hedging, no
unnecessary formality.

### Word Choice

Use plain language. Prefer short, common words: "use" not "utilize,"
"start" not "commence," "end" not "terminate."

### Abbreviations

Spell out on first use, then abbreviate: "application programming
interface (API)." After that, use the abbreviation.

### Inclusive Language

Use gender-neutral language. Avoid "whitelist/blacklist" (use
"allowlist/denylist"), "master/slave" (use "primary/replica"), and
ableist terms like "sanity check" (use "check").

### Bold and Italics

Use **bold** for UI elements: "Click **Save**." Use `code font` for
file names, commands, variables, and paths. Avoid italics in technical
documentation.

### Lists in Prose

Write in flowing paragraphs by default. Use lists only for three or
more genuinely parallel items. Each bullet must be a full sentence.
In prose, write lists naturally: "Key features include fast startup,
hot reloading, and zero-config defaults."

### Numbered Lists

Restart at 1 in each section. Use sequential numbering (1, 2, 3), not
lazy numbering. Indent nested lists 4 spaces.

## Dos and Don'ts

### Do

- Start every file with `---` on line 1
- Use exactly one H1 matching the front matter `title`
- Use ATX headings with a space after the hash
- Use unique, descriptive heading names in sentence case
- Keep one blank line before and after block elements
- Keep prose under 80 characters per line
- Use fenced code blocks with a language identifier
- Write descriptive link text as natural parts of sentences
- Use reference-style links when you have 5 or more external URLs
- Use alt text on every image
- Use tables only for genuinely tabular data
- Write in active voice, present tense, second person
- Cut filler words
- End every file with exactly one newline
- Use one sentence per line for cleaner diffs
- Test with `markdownlint-cli2` before committing

### Don't

- Put anything before `---` on line 1
- Use double blank lines anywhere
- Use setext headings (underline style)
- Skip heading levels
- Use indented code blocks
- Leave code blocks without a language identifier
- Use "click here" or "here" as link text
- Use bare URLs as link text
- Use `../` relative paths
- Use HTML for styling or layout
- Leave empty alt text on images
- Use tables when a list would work
- Use trailing whitespace for line breaks
- Use "simply," "just," "basically," or "obviously"
- Upload files via drag-and-drop without checking line 1
- Continue numbered list numbering across sections
- Put long tables inside HTML comments without
  `<!-- markdownlint-disable -->`

## Execution Process

When the user asks to **create or generate** a Markdown document:

1. **Match the type.** Compare the request against trigger phrases in
   the routing table. Identify the best-matching template type.
2. **Clarify if ambiguous.** If the request could match multiple types,
   ask the user which type they need with one-line descriptions.
3. **Fetch the template.** Use web fetch to retrieve the matched
   template from its raw GitHub URL. If the fetch fails, inform the
   user and suggest checking the repo is public.
4. **Read the template.** Parse the YAML front matter, section
   headings, `[SQUARE BRACKET]` placeholders, and `<!-- -->` comment
   instructions.
5. **Apply all rules.** Apply every rule from the Universal Rules and
   Style Guide sections of this file.
6. **Generate the file.** Replace all placeholders with real content
   based on the user's input. Follow the template structure exactly.
   Remove HTML comment instructions from the final output.
7. **Output as downloadable file.** Deliver the completed `.md` file.

## Audit Process

When the user asks to **check, audit, review, or validate** templates:

1. **Fetch the template(s).** Retrieve from GitHub using the routing
   table URLs. Fetch one, several, or all 32 depending on the request.
2. **Check every rule.** Compare each template against every rule in
   the Universal Rules and Style Guide sections of this file. Check:
   - YAML front matter has all 6 required fields
   - Exactly one H1 matching the title
   - Heading hierarchy with no skipped levels
   - ATX headings only, with space after hash, sentence case
   - Unique heading names
   - One blank line (not two) around all block elements
   - Prose under 80 characters
   - Fenced code blocks with language identifiers
   - Descriptive link text (no "click here")
   - Alt text on all images
   - No trailing whitespace
   - File ends with single newline
   - Active voice, present tense, no filler words
   - Tables used only for tabular data
   - No unnecessary HTML
3. **Report findings.** List each issue with the file name, line
   number (if possible), the rule violated, and the fix needed.
4. **Generate fixed versions.** If the user asks to fix or improve,
   generate corrected `.md` files that pass all rules and output them
   as downloadable files.

## New Template Process

When the user asks to **add a new template type**:

1. **Research best practices.** Use web search to find current
   gold-standard examples for this document type.
2. **Build the template.** Create the `.md` file following every rule
   in this file, with:
   - YAML front matter with all required fields
   - Full structural skeleton with section headings
   - `[SQUARE BRACKET]` placeholders showing what goes where
   - `<!-- -->` HTML comments explaining why each section exists
   - One complete real-world example section (not placeholder)
3. **Apply all rules.** The new template must pass every rule in the
   Universal Rules and Style Guide sections.
4. **Name correctly.** Follow the `NN-name.md` pattern with the next
   available number.
5. **Output the file.** Deliver as a downloadable `.md` file.
6. **Note the routing update.** Tell the user to add the new template
   to the routing table in this file and update the completeness check
   script to expect the new count.

## Markdownlint Config Reference

The repo uses a `.markdownlint.json` config. Every rule choice exists
because of a specific problem encountered during setup.

| Rule | Setting | Why |
|:-----|:--------|:----|
| MD013 | 80 chars, stern off | Allows long URLs, excludes code/tables/headings |
| MD024 | Disabled | Templates need repeated headings |
| MD025 | front_matter_title: "" | Stops YAML title counting as H1 |
| MD029 | Ordered style | Forces 1, 2, 3 numbering per section |
| MD033 | Allow details, summary, kbd, br, sub, sup | Collapsible sections |
| MD041 | Disabled | Front matter comes before first heading |
| MD051 | Disabled | Placeholder links can't resolve |
| MD059 | Disabled | Style guide shows bad link text as example |
| MD060 | Disabled | Table spacing style not enforced |
