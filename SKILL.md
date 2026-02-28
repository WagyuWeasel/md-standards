[SKILL.md](https://github.com/user-attachments/files/25640217/SKILL.md)
---
name: md-standards
description: >
  Gold-standard Markdown template system with 32 types. Triggers on any request
  to create, generate, write, or draft a Markdown file. Trigger phrases include:
  readme, project overview, contributing guide, how to contribute, PR process,
  changelog, release notes, version history, license, code of conduct, community
  guidelines, security policy, vulnerability reporting, support guide, how to get
  help, api docs, api documentation, api reference, endpoints, architecture doc,
  system design, setup guide, installation, getting started, config reference,
  configuration, settings, migration guide, upgrade guide, breaking changes,
  troubleshooting, common issues, debugging, runbook, playbook, operational
  procedures, incident response, wiki page, internal knowledge, knowledge base
  article, help article, faq, frequently asked questions, glossary, terms,
  definitions, style guide, writing guide, formatting standards, blog post,
  article, tutorial, how-to, walkthrough, report, brief, findings, analysis,
  proposal, rfc, request for comments, design doc, meeting notes, meeting
  minutes, standup notes, email template, newsletter, email draft, prd, product
  requirements, feature spec, adr, architecture decision record, decision record,
  roadmap, product roadmap, timeline, milestones, retrospective, retro, sprint
  retro, postmortem, journal, daily log, reflection, checklist, task list, todo,
  zettelkasten, atomic note, evergreen note, slip-box, or any request mentioning
  "md-standards" or "markdown template."
version: "1.0.0"
---


# MD-Standards

A system of 32 gold-standard Markdown templates with universal formatting rules,
hosted on GitHub and routed by Claude.


## How This Works

This skill routes Markdown creation requests to one of 32 template types hosted
on GitHub. Claude matches the user's request to the correct template using the
routing table below, fetches the template via its raw GitHub URL, and generates
a complete `.md` file. Every generated file follows the universal rules defined
in `universal-rules.md` and the structural guidance embedded in each template.


## Universal Rules

All generated files must comply with every rule in `universal-rules.md`, which
is included in this project's files. Before generating any file, read and apply
all 29 universal rules covering: specification compliance, YAML front matter,
document structure, content quality, code formatting, media and links,
accessibility, and file naming.


## Routing Table

| ID | Type | Trigger Phrases | Template URL |
|:---|:-----|:----------------|:-------------|
| 01 | README | readme, project overview, repo intro | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/01-readme.md` |
| 02 | Contributing Guide | contributing, contribution guide, how to contribute, PR process | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/02-contributing.md` |
| 03 | Changelog | changelog, change log, release notes, version history | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/03-changelog.md` |
| 04 | License | license, licensing, usage terms | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/04-license.md` |
| 05 | Code of Conduct | code of conduct, community guidelines, behavior standards | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/05-code-of-conduct.md` |
| 06 | Security Policy | security policy, vulnerability reporting, disclosure policy | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/06-security.md` |
| 07 | Support Guide | support, help guide, how to get help | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/07-support.md` |
| 08 | API Documentation | api docs, api documentation, api reference, endpoints | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/08-api-docs.md` |
| 09 | Architecture Document | architecture, system design, architecture doc, system overview | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/09-architecture.md` |
| 10 | Setup / Installation Guide | setup guide, installation, install guide, getting started | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/10-setup-guide.md` |
| 11 | Configuration Reference | config, configuration, config reference, settings | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/11-config-reference.md` |
| 12 | Migration Guide | migration, upgrade guide, breaking changes, version upgrade | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/12-migration-guide.md` |
| 13 | Troubleshooting Guide | troubleshooting, common issues, debugging, problems | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/13-troubleshooting.md` |
| 14 | Runbook / Playbook | runbook, playbook, operational procedures, incident response | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/14-runbook.md` |
| 15 | Wiki Page | wiki, wiki page, internal knowledge, knowledge article | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/15-wiki-page.md` |
| 16 | Knowledge Base Article | kb article, knowledge base, help article, support article | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/16-kb-article.md` |
| 17 | FAQ | faq, frequently asked questions, q&a | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/17-faq.md` |
| 18 | Glossary | glossary, terms, definitions, terminology | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/18-glossary.md` |
| 19 | Style Guide | style guide, writing guide, formatting standards | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/19-style-guide.md` |
| 20 | Blog Post | blog post, blog, article, post | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/20-blog-post.md` |
| 21 | Tutorial / How-To | tutorial, how-to, how to, walkthrough, guide | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/21-tutorial.md` |
| 22 | Report / Brief | report, brief, findings, analysis | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/22-report.md` |
| 23 | Proposal / RFC | proposal, rfc, request for comments, design doc | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/23-rfc.md` |
| 24 | Meeting Notes | meeting notes, meeting minutes, standup notes | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/24-meeting-notes.md` |
| 25 | Email / Newsletter | email template, newsletter, email draft | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/25-email-template.md` |
| 26 | PRD | prd, product requirements, feature spec, product spec | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/26-prd.md` |
| 27 | ADR | adr, architecture decision record, decision record | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/27-adr.md` |
| 28 | Roadmap | roadmap, product roadmap, timeline, milestones | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/28-roadmap.md` |
| 29 | Retrospective | retrospective, retro, sprint retro, postmortem | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/29-retrospective.md` |
| 30 | Journal Entry | journal, daily log, reflection, daybook | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/30-journal.md` |
| 31 | Checklist / Task List | checklist, task list, todo, to-do | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/31-checklist.md` |
| 32 | Zettelkasten Note | zettelkasten, zettel, atomic note, evergreen note, slip-box | `https://raw.githubusercontent.com/WagyuWeasel/md-standards/main/templates/32-zettelkasten.md` |


## Execution Process

When a user requests a Markdown document, follow these steps exactly:

1. **Match the type.** Compare the user's request against the trigger phrases
   in the routing table above. Identify the best-matching template type.

2. **Clarify if ambiguous.** If the request could match multiple types (e.g.,
   "help document" could be a support guide, KB article, or FAQ), ask the user
   which type they need. Show the matching options with one-line descriptions.

3. **Fetch the template.** Use web fetch to retrieve the matched template from
   its raw GitHub URL in the routing table. If the fetch fails, inform the user
   and suggest checking that the repo is public and the file exists.

4. **Read the template.** Parse the fetched template's structure: its YAML
   front matter fields, section headings, placeholder content in
   `[SQUARE BRACKETS]`, and HTML comment instructions (`<!-- -->`). These
   define the required sections, their order, and guidance for filling them.

5. **Apply universal rules.** Read and apply every rule from
   `universal-rules.md`: valid YAML front matter with all required fields,
   exactly one H1, heading hierarchy with no skipped levels, fenced code blocks
   with language identifiers, blank lines around block elements, no trailing
   whitespace, file ends with a single newline, and all other rules.

6. **Generate the file.** Replace all `[SQUARE BRACKET]` placeholders with
   real content based on the user's input and context. Follow the template
   structure exactly. Remove the HTML comment instructions from the final
   output — they are authoring guidance, not end-user content.

7. **Output as downloadable file.** Deliver the completed `.md` file as a
   downloadable file the user can save directly.
