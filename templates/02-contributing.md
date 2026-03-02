---
title: "Contributing to [PROJECT NAME]"
type: contributing
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: CONTRIBUTING GUIDE
     PURPOSE: Remove friction for new contributors. This file answers:
     how do I report a bug, suggest a feature, submit code, and what
     standards must my contribution meet?
     AUDIENCE: First-time and returning contributors.
     WHY: Projects with clear contributing guides receive significantly
     more contributions. This is the single most important file for
     community growth. -->

# Contributing to [PROJECT NAME]

Thank you for considering a contribution. This guide explains the process
for reporting bugs, suggesting features, and submitting code changes.
Following these guidelines helps maintainers review your work quickly.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How to Contribute](#how-to-contribute)
- [Development Setup](#development-setup)
- [Pull Request Process](#pull-request-process)
- [Style Guide](#style-guide)
- [Community](#community)

## Code of conduct

<!-- Link to your CODE_OF_CONDUCT.md. Every contributor must agree to it. -->

This project follows the [Code of Conduct](CODE_OF_CONDUCT.md). By
participating, you agree to uphold these standards. Report unacceptable
behavior to [EMAIL ADDRESS].

## How to contribute

### Reporting bugs

<!-- Explain exactly how to file a useful bug report. Link to your
     issue template if you have one. -->

Before filing a bug, search [existing issues](https://github.com/[OWNER]/[REPO]/issues)
to avoid duplicates. If your bug is new, open an issue and include:

- A clear, descriptive title
- Steps to reproduce the behavior
- Expected behavior vs. actual behavior
- Environment details: OS, runtime version, package version
- Screenshots or logs if applicable

### Suggesting features

<!-- Guide contributors toward actionable feature requests. -->

Open an issue with the `enhancement` label. Describe the problem you're
solving, the solution you'd like, and any alternatives you've considered.
Feature requests that align with the [project roadmap](ROADMAP.md) are
prioritized.

### Your first contribution

<!-- Lower the barrier for newcomers. Point to beginner-friendly issues. -->

Look for issues labeled `good first issue` or `help wanted`. These are
scoped for contributors who are new to the project. If you need
guidance, comment on the issue and a maintainer will help.

## Development setup

<!-- Step-by-step instructions to get a local dev environment running.
     Every command must be copy-paste-runnable. -->

```bash
git clone https://github.com/[OWNER]/[REPO].git
cd [REPO]
[INSTALL DEPENDENCIES COMMAND]
[START DEV SERVER OR BUILD COMMAND]
```

### Running tests

```bash
[TEST COMMAND, e.g., npm test]
```

### Running linters

```bash
[LINT COMMAND, e.g., npm run lint]
```

## Pull request process

<!-- Define every step from fork to merge. Be explicit about what
     triggers a review, what blocks a merge, and who can approve. -->

1. Fork the repository and create a branch from `main`.
2. Name your branch descriptively: `fix/login-timeout`, `feat/dark-mode`.
3. Make your changes. Add or update tests for any new functionality.
4. Run the full test suite and linter. All checks must pass.
5. Write a clear commit message following the [commit
conventions](#commit-messages).
6. Open a pull request against `main`. Fill in the PR template completely.
7. A maintainer will review within [TIMEFRAME, e.g., 3 business days].

### Commit messages

<!-- Specify your commit message convention. Conventional Commits is
     the most widely adopted standard. -->

This project uses [Conventional Commits](https://www.conventionalcommits.org/):

```text
type(scope): short description

[optional body]

[optional footer]
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`.

### What we review

<!-- Be transparent about review criteria so contributors aren't surprised. -->

- Does the code follow the [style guide](#style-guide)?
- Are there tests for new functionality?
- Does the PR description explain the "why" clearly?
- Does it pass CI checks?

## Style guide

<!-- Link to or embed your coding standards. Keep it brief here;
     link to a full style guide if you have one. -->

### Code style

- [LANGUAGE-SPECIFIC RULES, e.g., "Follow the Airbnb JavaScript Style Guide"]
- Use [FORMATTER, e.g., Prettier] with the project's config
- Run `[FORMAT COMMAND]` before committing

### Documentation style

- Write in active voice, imperative mood for instructions
- Use fenced code blocks with language identifiers
- Keep line length under 80 characters for prose

## Community

<!-- Tell contributors where to find help, ask questions, and connect
     with the team. -->

- [DISCUSSION FORUM, e.g., GitHub Discussions](https://github.com/[OWNER]/[REPO]/discussions)
- [CHAT PLATFORM, e.g., Discord](https://discord.gg/[INVITE])
- [EMAIL OR MAILING LIST]

<!-- REAL-WORLD EXAMPLE: Completed "How to Contribute" section for
     a fictional project. -->

<!--
## How to contribute

### Reporting bugs

Before filing a bug, search existing issues at
https://github.com/acme/fastlog/issues to avoid duplicates. If your
bug is new, open an issue and include:

- A clear, descriptive title
- Steps to reproduce: the exact commands or code that trigger the bug
- Expected behavior vs. actual behavior
- Your Node.js version (`node -v`) and fastlog version
- Relevant log output or error messages

### Suggesting features

Open an issue with the `enhancement` label. Describe the problem you
want solved (not just the solution you want). Include example usage
showing how the feature would work from a user's perspective.
-->
