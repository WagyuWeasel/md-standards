[11-config-reference.md](https://github.com/user-attachments/files/25634183/11-config-reference.md)
---
title: "[PROJECT NAME] Configuration Reference"
type: config-reference
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: CONFIGURATION REFERENCE
     PURPOSE: Document every user-facing configuration option in one
     place. Developers should be able to look up any option and know
     its name, type, default, valid values, and behavior.
     AUDIENCE: Developers and operators who need to customize behavior.
     SOURCE: Stripe's exhaustive config tables, Vercel's clean option
     docs, and 12-factor app configuration principles. -->


# [PROJECT NAME] Configuration Reference

This document lists every configuration option for [PROJECT NAME].
Options can be set via [CONFIG FILE FORMAT, e.g., `config.yml`,
`.env` file, environment variables, CLI flags].


## Table of Contents

- [Configuration File](#configuration-file)
- [Environment Variables](#environment-variables)
- [Options Reference](#options-reference)
- [Profiles and Environments](#profiles-and-environments)
- [Examples](#examples)


## Configuration File

<!-- Explain where the config file lives and its format. -->

[PROJECT NAME] reads configuration from `[FILE PATH, e.g.,
config.yml]` in the project root. If no file is found, defaults are
used. The file format is [FORMAT, e.g., YAML, JSON, TOML].

```yaml
# config.yml — minimal example
[OPTION]: [VALUE]
[OPTION]: [VALUE]
[SECTION]:
  [OPTION]: [VALUE]
  [OPTION]: [VALUE]
```

### Precedence

<!-- Explain what wins when multiple sources set the same value. -->

Configuration is resolved in this order (highest priority first):

1. CLI flags
2. Environment variables
3. Configuration file
4. Defaults


## Environment Variables

Every option can be set via environment variable. The naming convention
is: `[PREFIX]_[SECTION]_[OPTION]` in uppercase with underscores.

For example, the config option `database.host` maps to the environment
variable `[PREFIX]_DATABASE_HOST`.


## Options Reference

<!-- Document every option. Group by section. For each option: name,
     type, default, valid values, and what it does. -->

### [SECTION 1, e.g., Server]

| Option | Type | Default | Description |
|:-------|:-----|:--------|:------------|
| `[OPTION, e.g., server.port]` | `integer` | `3000` | [DESCRIPTION] |
| `[OPTION, e.g., server.host]` | `string` | `"0.0.0.0"` | [DESCRIPTION] |
| `[OPTION, e.g., server.timeout]` | `integer` | `30000` | [DESCRIPTION, e.g., Request timeout in milliseconds] |

### [SECTION 2, e.g., Database]

| Option | Type | Default | Description |
|:-------|:-----|:--------|:------------|
| `[OPTION, e.g., database.host]` | `string` | `"localhost"` | [DESCRIPTION] |
| `[OPTION, e.g., database.port]` | `integer` | `5432` | [DESCRIPTION] |
| `[OPTION, e.g., database.name]` | `string` | — | **Required.** [DESCRIPTION] |
| `[OPTION, e.g., database.pool_size]` | `integer` | `10` | [DESCRIPTION] |

### [SECTION 3, e.g., Logging]

| Option | Type | Default | Description |
|:-------|:-----|:--------|:------------|
| `[OPTION, e.g., logging.level]` | `string` | `"info"` | One of: `debug`, `info`, `warn`, `error` |
| `[OPTION, e.g., logging.format]` | `string` | `"json"` | One of: `json`, `text` |


## Profiles and Environments

<!-- If your tool supports named profiles or per-environment config,
     explain how they work. Remove this section if not applicable. -->

Use the `[ENVIRONMENT VARIABLE, e.g., NODE_ENV]` variable to load
environment-specific overrides. Place override files at:

```text
config.yml              ← base (always loaded)
config.development.yml  ← merged when NODE_ENV=development
config.production.yml   ← merged when NODE_ENV=production
```

Environment-specific values override base values. Unset values fall
back to the base file.


## Examples

### Minimal Configuration

```yaml
[OPTION]: [VALUE]
[SECTION]:
  [OPTION]: [VALUE]
```

### Production Configuration

```yaml
server:
  port: 8080
  host: "0.0.0.0"
  timeout: 60000
database:
  host: "db.internal.example.com"
  port: 5432
  name: "myapp_prod"
  pool_size: 25
logging:
  level: "warn"
  format: "json"
```
