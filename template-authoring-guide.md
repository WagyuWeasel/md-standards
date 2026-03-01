---
title: "Template Authoring Guide"
type: style-guide
version: "1.0.0"
created: 2026-03-01
updated: 2026-03-01
author: ""
status: published
tags: [md-standards, templates, authoring, github]
---

# Template Authoring Guide

This document defines the exact formatting rules for creating or
editing Markdown templates in the md-standards repo. Follow these
rules and every template will pass the GitHub Actions validator
first time. Built from every error encountered during initial setup,
cross-referenced against Google's Markdown style guide, GitHub's
official documentation standards, the GFM spec, and markdownlint
rules.

## Table of Contents

- [File Start](#file-start)
- [YAML Front Matter](#yaml-front-matter)
- [Headings](#headings)
- [Blank Lines](#blank-lines)
- [Line Length](#line-length)
- [Prose and Paragraphs](#prose-and-paragraphs)
- [Lists](#lists)
- [Code Blocks](#code-blocks)
- [Links](#links)
- [Images](#images)
- [Tables](#tables)
- [HTML Usage](#html-usage)
- [HTML Comments](#html-comments)
- [File End](#file-end)
- [File Naming](#file-naming)
- [Dos and Don'ts](#dos-and-donts)
- [Common Mistakes](#common-mistakes)
- [Markdownlint Config Reference](#markdownlint-config-reference)

## File Start

Line 1 must be `---` (the opening YAML fence). Nothing before it.
No blank line, no download link, no text.

**Correct:**

```text
---
title: "My Document"
```

**Wrong:**

```text
[filename.md](https://github.com/...)
---
title: "My Document"
```

GitHub sometimes prepends a download link when you upload files via
drag-and-drop. Always check that line 1 is `---`.

## YAML Front Matter

Every template starts with YAML front matter. Six fields are required.
The validation bot checks for all of them.

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

**Required fields:** `title`, `type`, `version`, `created`, `updated`,
`status`.

**Optional fields:** `author`, `tags`, `audience`, `tldr`, `related`,
`changelog`.

**Rules:**

- Wrap `title` in quotes if it contains colons, brackets, or special
  characters.
- `version` must be in quotes: `"1.0.0"` not `1.0.0`.
- `status` must be one of: `draft`, `review`, `published`, `archived`.
- `type` must match one of the 32 template type IDs.

## Headings

**One H1 only.** Every file has exactly one `# Title` heading. It must
match the `title` field in the front matter.

**Never skip levels.** Go H1 then H2 then H3 then H4. Never jump from
H2 to H4.

**Use ATX style only.** That means `# Heading` with hash marks. Never
use underline-style (setext) headings.

**Space after the hash.** Always put a space between `#` and the
heading text. Write `## Heading` not `##Heading`.

**Use unique heading names.** Each heading should be unique and fully
descriptive, especially for sub-sections. This ensures auto-generated
anchor links are clear and unambiguous.

**Sentence case for headings.** Write "Configure the database" not
"Configure the Database." Capitalise only the first word and proper
nouns.

**Correct:**

```markdown
# Title

## Section

### Subsection
```

**Wrong:**

```markdown
Title
=====

Section
-------
```

**Also wrong:**

```markdown
##No Space After Hash

## Setup
### Summary
## Config
### Summary
```

## Blank Lines

**One blank line** before and after every heading, code block, list,
blockquote, and table.

**Never use double blank lines.** The linter rejects them. This was
the single most common error during initial setup — over 200 errors
across 32 files.

**Correct:**

```markdown
Some paragraph text.

## Next Section

More text here.
```

**Wrong:**

```markdown
Some paragraph text.


## Next Section

More text here.
```

## Line Length

Keep prose lines under 80 characters. The linter enforces this.

**Exempt from the 80-character limit:**

- Code blocks
- Tables
- Headings
- Lines containing long URLs that cannot be broken

The linter config has `stern: false` which means it only flags lines
that can actually be wrapped. Lines that are long solely because of a
URL will pass.

**When a prose line is too long,** break it at a natural word boundary.
Markdown treats adjacent lines as one paragraph when rendered:

```markdown
This is a sentence that explains something important
and continues on the next line.
```

## Prose and Paragraphs

**Write in flowing paragraphs by default.** Reserve bullet points for
genuinely discrete items where three or more items are parallel in
structure.

**Active voice.** Write "Run the command" not "The command should be
run." Use imperative mood for instructions.

**Present tense.** Write "The API returns JSON" not "The API will
return JSON."

**Second person.** Address the reader as "you."

**Cut filler words.** Remove "simply," "just," "basically," "easily,"
and "obviously." If something were obvious, it wouldn't need
documenting.

**Lead with purpose.** The first paragraph after H1 states what this
document is, who it's for, and why it exists. No preamble, no
"Welcome to..." openers.

**One sentence per line is recommended** for version control. Each
sentence on its own line makes diffs cleaner and easier to review.
The rendered output looks the same either way.

## Lists

**Bullet points** use hyphens: `- Item`. Each bullet must be at least
one full sentence.

**Numbered lists restart at 1 in each section.** The linter enforces
sequential numbering starting from 1 under each heading.

**Indent nested lists 4 spaces.** This keeps alignment consistent for
both numbered and bulleted lists.

**Use lists only for genuinely parallel items.** If you have two items,
write a sentence. If you have three or more parallel items, a list
is appropriate.

**Correct:**

```markdown
## Section A

1. First item
2. Second item

## Section B

1. First item
2. Second item
```

**Wrong:**

```markdown
## Section A

1. First item
2. Second item

## Section B

3. Third item
4. Fourth item
```

**Nested list example:**

```markdown
1.  First item with detail.
    More text about this item indented 4 spaces.

    ```bash
    code inside a list item indented 4 spaces
    ```

2.  Second item.
```

## Code Blocks

Always use fenced code blocks with a language identifier.

**Correct:**

````markdown
```bash
npm install
```
````

**Wrong:**

````markdown
```
npm install
```
````

**Never use indented code blocks** (4-space indent). Always use fences.

**Supported language identifiers:** `bash`, `python`, `javascript`,
`json`, `yaml`, `text`, `html`, `css`, `sql`, `shell`, `typescript`,
and any other valid language tag. Use `text` when no specific language
applies.

**Escape newlines in long commands.** Use a backslash at the end of
the line for commands that wrap:

```bash
curl -X POST https://api.example.com/v1/resource \
  -H "Authorization: Bearer TOKEN" \
  -H "Content-Type: application/json"
```

**Inline code.** Use backticks for file names (`README.md`), commands
(`npm install`), variables (`API_KEY`), function names (`getData()`),
and paths (`/etc/config`).

## Links

**Descriptive link text always.** Never use "click here," "here,"
"this link," or bare URLs as link text.

**Correct:**

```markdown
See the [configuration reference](config.md) for details.
```

**Wrong:**

```markdown
Click [here](config.md) for details.
See the config docs: https://example.com/config
```

**Relative links** for files within the repo. **Absolute URLs** for
external resources.

**Avoid `../` relative paths.** Use paths from the repo root where
possible. Deep relative paths are fragile and break when files move.

**Use reference-style links** when a document has 5 or more external
URLs. This keeps prose readable and tables compact. Define reference
links just before the next heading after their first use.

**Correct:**

```markdown
See the [style guide][sg] for formatting rules.

[sg]: https://example.com/really/long/path/to/style-guide
```

**Shorten links where possible.** Long URLs reduce readability in
source form. Strip unnecessary query parameters and tracking codes.

## Images

**Alt text is mandatory.** Never leave alt text empty. Describe what
the image shows for accessibility.

**Correct:**

```markdown
![Architecture diagram showing three microservices](docs/arch.png)
```

**Wrong:**

```markdown
![](docs/arch.png)
```

**Use images sparingly.** Prefer text over screenshots. Images can't
be searched, diffed, or updated easily.

**Store images** in a `docs/images/` directory within the repo.

**Use PNG for screenshots, SVG for diagrams.** Keep file sizes
reasonable.

## Tables

**Use tables for genuinely tabular data only.** If your data could be
a list, use a list instead. Lists are easier to write, read, and
maintain in Markdown.

**Tables must be readable in raw text.** Align columns where practical
using spaces. Use left-alignment by default.

**Every row must start and end with a pipe** `|` for GitHub
compatibility.

**Keep table cells short.** If a cell needs a paragraph of text, the
data doesn't belong in a table. Use reference-style links inside
tables to keep cells compact.

**Use a minimum of 3 dashes** in the separator row.

**Correct:**

```markdown
| Name   | Type     | Description         |
|:-------|:---------|:--------------------|
| `port` | `number` | Server port number  |
| `host` | `string` | Server hostname     |
```

**Wrong:**

```markdown
Name|Type|Description
-|-|-
port|number|Server port number with a really long description that goes on and on
```

## HTML Usage

**Avoid HTML unless Markdown can't do the job.** Every bit of HTML
reduces readability and portability.

**Allowed HTML elements:** `<details>`, `<summary>`, `<kbd>`, `<br>`,
`<sub>`, `<sup>`. These are permitted because Markdown has no
equivalent.

**Never use HTML for styling.** No `<div>`, `<span>`, `<font>`,
`<center>`, or inline styles.

**Never use HTML tables.** Always use Markdown table syntax.

## HTML Comments

Templates use HTML comments for authoring guidance:

```markdown
<!-- This explains why this section exists and how to fill it. -->
```

**Remove comments from final output.** They are instructions for the
template user, not end-user content.

**Content inside HTML comments is still linted.** Tables and long lines
inside `<!-- -->` blocks trigger lint errors. Add
`<!-- markdownlint-disable -->` on its own line before any comment
block that contains tables or lines over 80 characters.

## File End

Every file must end with exactly one newline character. Not zero, not
two. One.

Most text editors handle this automatically. GitHub's web editor adds
the final newline for you.

**No trailing whitespace on any line.** The linter and the structure
validation bot both check for this. Don't use trailing spaces for line
breaks — use a backslash if you must break a line (but prefer not to).

## File Naming

All template files follow this pattern:

```text
NN-name.md
```

- Two-digit number prefix: `01` through `32`
- Hyphen separator
- Lowercase name with hyphens for spaces
- `.md` extension

**Correct:** `01-readme.md`, `27-adr.md`, `14-runbook.md`

**Wrong:** `1-readme.md`, `01_readme.md`, `01-README.md`,
`Setup Guide.md`

## Dos and Don'ts

### Do

- Start every file with `---` on line 1 (YAML front matter)
- Use exactly one H1 that matches the front matter `title`
- Use ATX headings (`# Heading`) with a space after the hash
- Use unique, descriptive heading names
- Keep one blank line before and after block elements
- Keep prose under 80 characters per line
- Use fenced code blocks with a language identifier
- Write descriptive link text
- Use reference-style links when you have 5+ external URLs
- Use alt text on every image
- Use tables only for genuinely tabular data
- Write in active voice, present tense, second person
- Cut filler words
- End every file with exactly one newline
- Test with `markdownlint-cli2` before committing
- Use one sentence per line for cleaner diffs

### Don't

- Don't put anything before `---` on line 1
- Don't use double blank lines anywhere
- Don't use setext headings (underline style)
- Don't skip heading levels
- Don't use indented code blocks (4-space style)
- Don't leave code blocks without a language identifier
- Don't use "click here" or "here" as link text
- Don't use bare URLs as link text
- Don't use `../` relative paths unless absolutely necessary
- Don't use HTML for styling or layout
- Don't leave empty alt text on images
- Don't use tables when a list would work
- Don't use trailing whitespace for line breaks
- Don't use "simply," "just," "basically," or "obviously"
- Don't upload files via GitHub drag-and-drop without checking line 1
- Don't continue numbered list numbering across sections
- Don't put long tables inside HTML comment blocks without
  `<!-- markdownlint-disable -->`

## Common Mistakes

These are every error encountered during the initial setup of this
repo. They are documented here so they never happen again.

**Double blank lines before headings.** The original universal rules
said "two blank lines before H2 sections." The linter rejects this.
Over 200 errors were caused by this single issue across 32 files.
Use one blank line only. Always.

**GitHub download link on line 1.** When you upload `.md` files via
GitHub's "Add file" or drag-and-drop interface, GitHub prepends a
download link like
`[filename.md](https://github.com/user-attachments/files/...)` to
line 1. This breaks YAML front matter and cascades into heading style
errors across the entire file. Always verify line 1 is `---`.

**YAML title counted as H1.** The linter's MD025 rule treats the YAML
`title` field as a heading by default. Our config sets
`front_matter_title: ""` to disable this. If you see "multiple H1"
errors, check the config has this setting.

**Continuing numbered lists across sections.** The linter enforces
`ordered` style, meaning each section restarts numbering at 1.
Numbered lists do not carry over from one heading to the next.

**Long lines in HTML comment blocks.** Content inside `<!-- -->` is
linted as regular text. Tables inside comments trigger line-length
and heading-style errors. Always add `<!-- markdownlint-disable -->`
before comment blocks containing tables or long lines.

**Setext heading cascade.** If line 1 is corrupted (e.g., a GitHub
download link), the linter interprets the `---` on line 2 as a setext
heading underline. It then expects all headings in the file to use
setext style, causing every `# Heading` to fail with MD003. Fix line
1 and the entire cascade disappears.

**Missing language on code blocks.** Every fenced code block needs a
language identifier after the opening triple backticks. Use `text`
when no specific language applies.

**Bare URLs and "click here" links.** The linter flags non-descriptive
link text. Always write links as natural parts of sentences with
meaningful anchor text.

## Markdownlint Config Reference

The repo uses this `.markdownlint.json` config. Every rule choice
exists because of a specific problem encountered during setup.

| Rule | Setting | Why |
|:-----|:--------|:----|
| MD013 | 80 chars, stern off | Allows long URLs, excludes code/tables/headings |
| MD024 | Disabled | Templates need repeated headings |
| MD025 | front_matter_title: "" | Stops YAML title counting as H1 |
| MD029 | Ordered style | Forces 1, 2, 3 numbering per section |
| MD033 | Allow details, summary, kbd, br, sub, sup | Needed for collapsible sections |
| MD041 | Disabled | Front matter comes before first heading |
| MD051 | Disabled | Placeholder links can't resolve |
| MD059 | Disabled | Style guide shows bad link text as example |
| MD060 | Disabled | Table spacing style not enforced |
