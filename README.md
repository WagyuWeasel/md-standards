---
title: "MD Standards"
type: readme
version: "1.0.0"
created: 2026-02-28
updated: 2026-02-28
author: ""
status: published
---

# MD Standards

A collection of 32 gold-standard Markdown templates with automated validation. Every template follows CommonMark, GitHub Flavored Markdown, and markdownlint best practices — enforced by a GitHub Actions bot that runs every 3 days.


## What This Is

MD Standards gives you production-ready Markdown templates for every common document type: READMEs, API docs, RFCs, changelogs, blog posts, runbooks, and 26 more. Each template includes the correct structure, YAML front matter, placeholder content, and inline guidance explaining what goes where and why.

The system integrates with Claude via a `SKILL.md` router. Say "create a README" or "I need an ADR," and Claude fetches the right template from this repo, applies universal formatting rules, and generates a complete `.md` file.


## Table of Contents

- [Quick Start](#quick-start)
- [Repository Structure](#repository-structure)
- [The 32 Template Types](#the-32-template-types)
- [Universal Rules](#universal-rules)
- [Validation Bot](#validation-bot)
- [Using with Claude](#using-with-claude)
- [Maintenance](#maintenance)
- [Standards Sources](#standards-sources)
- [License](#license)


## Quick Start

1. Clone the repo:

   ```bash
   git clone https://github.com/{USERNAME}/md-standards.git
   ```

2. Browse `templates/` and copy any template you need.

3. Replace `[PLACEHOLDER]` content with your own.

4. Run the linter locally (optional):

   ```bash
   npm install -g markdownlint-cli2
   markdownlint-cli2 "templates/**/*.md"
   ```


## Repository Structure

```text
md-standards/
├── SKILL.md                          # Claude router (Project File)
├── universal-rules.md                # Global formatting rules (Project File)
├── README.md                         # This file
├── .markdownlint.json                # Lint configuration
├── .editorconfig                     # Editor settings
├── .github/
│   └── workflows/
│       └── validate.yml              # 3-day validation bot
├── scripts/
│   ├── validate-structure.sh         # Structure checks
│   └── validate-completeness.sh      # Completeness checks
└── templates/
    ├── 01-readme.md
    ├── 02-contributing.md
    ├── ...
    └── 32-zettelkasten-note.md
```


## The 32 Template Types

### Category A: Repository & Project Files

| ID | Template | Description |
|:---|:---------|:------------|
| 01 | README | Project overview, setup, usage, badges |
| 02 | Contributing Guide | How to contribute, PR process, code standards |
| 03 | Changelog | Version history, Keep a Changelog format |
| 04 | License | License text and usage terms |
| 05 | Code of Conduct | Community behavior standards |
| 06 | Security Policy | Vulnerability reporting and disclosure |
| 07 | Support Guide | How to get help, FAQs, contact info |

### Category B: Technical Documentation

| ID | Template | Description |
|:---|:---------|:------------|
| 08 | API Documentation | Endpoints, parameters, responses, auth |
| 09 | Architecture Document | System design, components, diagrams |
| 10 | Setup / Installation Guide | Step-by-step install and config |
| 11 | Configuration Reference | All config options, defaults, examples |
| 12 | Migration Guide | Version upgrade steps, breaking changes |
| 13 | Troubleshooting Guide | Common issues, symptoms, solutions |
| 14 | Runbook / Playbook | Operational procedures, incident response |

### Category C: Knowledge & Reference

| ID | Template | Description |
|:---|:---------|:------------|
| 15 | Wiki Page | General knowledge article, internal wiki |
| 16 | Knowledge Base Article | User-facing help article, searchable |
| 17 | FAQ | Question-answer pairs, categorized |
| 18 | Glossary | Term definitions, alphabetized |
| 19 | Style Guide | Writing and formatting standards |

### Category D: Writing & Content

| ID | Template | Description |
|:---|:---------|:------------|
| 20 | Blog Post | Article with front matter, SEO metadata |
| 21 | Tutorial / How-To | Step-by-step learning guide with examples |
| 22 | Report / Brief | Findings, analysis, recommendations |
| 23 | Proposal / RFC | Request for comments, decision proposal |
| 24 | Meeting Notes | Attendees, agenda, decisions, action items |
| 25 | Email / Newsletter | Structured email content in Markdown |

### Category E: Project Management

| ID | Template | Description |
|:---|:---------|:------------|
| 26 | PRD | Feature specs, user stories, acceptance criteria |
| 27 | ADR | Decision context, options, outcome |
| 28 | Roadmap | Timeline, milestones, priorities |
| 29 | Retrospective | What worked, what didn't, action items |

### Category F: Personal & Notes

| ID | Template | Description |
|:---|:---------|:------------|
| 30 | Journal Entry | Daily/weekly log, reflections |
| 31 | Checklist / Task List | Actionable items with checkboxes |
| 32 | Zettelkasten Note | Atomic note, linked, tagged, evergreen |


## Universal Rules

Every template in this repo follows a strict set of formatting and structural rules derived from CommonMark 0.31.2, GFM, markdownlint, and documentation best practices from Anthropic, Stripe, and Vercel. The full rule set lives in [`universal-rules.md`](universal-rules.md).

Key highlights: YAML front matter on every file, single H1, no skipped heading levels, fenced code blocks with language IDs, no trailing whitespace, and a final newline.


## Validation Bot

A GitHub Actions workflow runs every 3 days (and on every push/PR to `main`) to validate the entire repo. It performs four checks:

1. **Lint** — runs `markdownlint-cli2` against all `.md` files
2. **Structure** — verifies YAML front matter, single H1, UTF-8 encoding, trailing whitespace, and final newline on every template
3. **Completeness** — confirms all 32 templates exist plus `SKILL.md` and `universal-rules.md`
4. **Cross-reference** — ensures the SKILL.md routing table matches the actual files in `templates/`

You can trigger the bot manually from the Actions tab or by pushing to `main`.


## Using with Claude

1. Copy `SKILL.md` and `universal-rules.md` into your Claude Project Files.
2. Replace `{USERNAME}` in `SKILL.md` with your GitHub username.
3. Enable web fetch in your Claude project.
4. Ask Claude to create any Markdown document type, and it will fetch the right template from this repo and generate a complete file.


## Maintenance

The validation bot handles day-to-day checks automatically. For manual maintenance:

- **Monthly (~15 min):** Review any open issues from failed bot runs and fix violations.
- **Quarterly (~1 hour):** Research current best practices, update templates, bump versions.
- **Adding a new type:** Create the template, add it to the SKILL.md routing table, update the completeness script, and push.


## Standards Sources

This system draws from CommonMark 0.31.2, GitHub Flavored Markdown, markdownlint (MD001–MD059), Anthropic's documentation standards, Stripe's Markdoc and documentation-as-product philosophy, and Vercel's Next.js docs patterns.


## License

[LICENSE](LICENSE)
