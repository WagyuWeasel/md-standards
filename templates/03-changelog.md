---
title: "Changelog"
type: changelog
version: "1.0.0"
created: 2026-01-01
updated: 2026-01-01
author: ""
status: draft
tags: []
---

<!-- TEMPLATE: CHANGELOG
     PURPOSE: Communicate what changed between releases so users and
     contributors can decide when to upgrade and what to expect.
     AUDIENCE: Users upgrading between versions, contributors tracking
     progress, and maintainers preparing releases.
     FORMAT: Follows Keep a Changelog (https://keepachangelog.com/en/1.1.0/)
     and Semantic Versioning (https://semver.org/spec/v2.0.0.html).
     WHY KEEP A CHANGELOG: Changelogs are for humans, not machines.
     Auto-generated git logs are noisy. A curated changelog groups
     changes by impact and makes upgrade decisions easy. -->


# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


<!-- CATEGORIES: Use only these six categories, in this order.
     Omit any category that has no entries for a given release.
     - Added: new features
     - Changed: changes to existing functionality
     - Deprecated: features that will be removed in a future release
     - Removed: features removed in this release
     - Fixed: bug fixes
     - Security: vulnerability patches -->


## [Unreleased]

<!-- Stage changes here as they land on main. Move them into a versioned
     section when you cut a release. This section should always exist. -->

### Added

- [DESCRIBE NEW FEATURE OR CAPABILITY]

### Fixed

- [DESCRIBE BUG FIX WITH ISSUE REFERENCE, e.g., #42]


## [1.0.0] - 2026-01-01

<!-- Each release gets a version number, date, and grouped changes.
     Link the version header to a GitHub compare URL (see bottom). -->

### Added

- [INITIAL FEATURE SET DESCRIPTION]
- [ANOTHER FEATURE]

### Changed

- [DESCRIBE WHAT CHANGED FROM PREVIOUS BEHAVIOR]

### Fixed

- [DESCRIBE BUG FIX]


## [0.2.0] - 2025-12-01

### Added

- [FEATURE ADDED IN THIS RELEASE]

### Deprecated

- [FEATURE THAT WILL BE REMOVED IN A FUTURE VERSION]


## [0.1.0] - 2025-11-01

### Added

- Initial release with [CORE FEATURE SET].


<!-- COMPARE LINKS: Place at the bottom of the file. These turn version
     headers into clickable diff links on GitHub. Update with every release. -->

[Unreleased]: https://github.com/[OWNER]/[REPO]/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/[OWNER]/[REPO]/compare/v0.2.0...v1.0.0
[0.2.0]: https://github.com/[OWNER]/[REPO]/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/[OWNER]/[REPO]/releases/tag/v0.1.0


<!-- REAL-WORLD EXAMPLE: A completed release entry. -->

<!--
## [2.3.0] - 2026-02-15

### Added

- JSON output format for structured logging (#128)
- Support for custom log levels via `log.define()` (#134)

### Changed

- Default timestamp format changed from ISO 8601 to Unix epoch for
  performance. Set `timestamps: "iso"` in config to restore the
  previous behavior.

### Fixed

- Log rotation no longer drops the last message before rotating (#141)
- Fixed memory leak when using child loggers in worker threads (#139)

### Security

- Updated `minimatch` dependency to 9.0.4 to address CVE-2024-XXXX
-->
