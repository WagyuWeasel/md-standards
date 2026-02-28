#!/usr/bin/env bash
# validate-completeness.sh
# Usage:
#   bash validate-completeness.sh completeness   - Check all 32 files + root files exist
#   bash validate-completeness.sh crossref        - Cross-reference SKILL.md routing table vs templates/

set -euo pipefail

MODE="${1:-completeness}"
TEMPLATES_DIR="templates"
SKILL_FILE="SKILL.md"
RULES_FILE="universal-rules.md"
ERRORS=0

# The 32 expected template files
EXPECTED_FILES=(
  "01-readme.md"
  "02-contributing.md"
  "03-changelog.md"
  "04-license.md"
  "05-code-of-conduct.md"
  "06-security.md"
  "07-support.md"
  "08-api-docs.md"
  "09-architecture.md"
  "10-setup-guide.md"
  "11-config-reference.md"
  "12-migration-guide.md"
  "13-troubleshooting.md"
  "14-runbook.md"
  "15-wiki-page.md"
  "16-kb-article.md"
  "17-faq.md"
  "18-glossary.md"
  "19-style-guide.md"
  "20-blog-post.md"
  "21-tutorial.md"
  "22-report.md"
  "23-rfc.md"
  "24-meeting-notes.md"
  "25-email-template.md"
  "26-prd.md"
  "27-adr.md"
  "28-roadmap.md"
  "29-retrospective.md"
  "30-journal.md"
  "31-checklist.md"
  "32-zettelkasten.md"
)

# --- Completeness Check ---
if [[ "$MODE" == "completeness" ]]; then
  echo "=== MD Standards Completeness Check ==="
  echo ""

  # Check root files
  echo "Checking root files..."
  for root_file in "$SKILL_FILE" "$RULES_FILE"; do
    if [[ -f "$root_file" ]]; then
      echo "  PASS: $root_file exists"
    else
      echo "  FAIL: $root_file is missing"
      ERRORS=$((ERRORS + 1))
    fi
  done
  echo ""

  # Check templates directory
  if [[ ! -d "$TEMPLATES_DIR" ]]; then
    echo "FAIL: templates/ directory not found"
    exit 1
  fi

  # Count template files
  actual_count=$(find "$TEMPLATES_DIR" -maxdepth 1 -name "*.md" | wc -l)
  echo "Template files found: $actual_count (expected: 32)"
  if [[ "$actual_count" -ne 32 ]]; then
    echo "  FAIL: Expected exactly 32 template files, found $actual_count"
    ERRORS=$((ERRORS + 1))
  fi
  echo ""

  # Check each expected file exists
  echo "Checking individual templates..."
  for expected in "${EXPECTED_FILES[@]}"; do
    if [[ -f "$TEMPLATES_DIR/$expected" ]]; then
      echo "  PASS: $expected"
    else
      echo "  FAIL: $expected is missing"
      ERRORS=$((ERRORS + 1))
    fi
  done
  echo ""

  # Check for unexpected files
  echo "Checking for unexpected files..."
  while IFS= read -r file; do
    filename=$(basename "$file")
    found=false
    for expected in "${EXPECTED_FILES[@]}"; do
      if [[ "$filename" == "$expected" ]]; then
        found=true
        break
      fi
    done
    if [[ "$found" == "false" ]]; then
      echo "  WARN: Unexpected file: $filename"
    fi
  done < <(find "$TEMPLATES_DIR" -maxdepth 1 -name "*.md")
  echo ""

  # Check SKILL.md routing table has 32 entries
  echo "Checking SKILL.md routing table..."
  if [[ -f "$SKILL_FILE" ]]; then
    # Count table rows that start with | and contain a template URL
    routing_count=$(grep -c "raw.githubusercontent.com" "$SKILL_FILE" || true)
    echo "  Routing table entries: $routing_count (expected: 32)"
    if [[ "$routing_count" -ne 32 ]]; then
      echo "  FAIL: Expected 32 routing entries, found $routing_count"
      ERRORS=$((ERRORS + 1))
    else
      echo "  PASS"
    fi
  fi

# --- Cross-Reference Check ---
elif [[ "$MODE" == "crossref" ]]; then
  echo "=== MD Standards Cross-Reference Check ==="
  echo ""

  if [[ ! -f "$SKILL_FILE" ]]; then
    echo "FAIL: $SKILL_FILE not found"
    exit 1
  fi

  if [[ ! -d "$TEMPLATES_DIR" ]]; then
    echo "FAIL: templates/ directory not found"
    exit 1
  fi

  # Extract filenames from SKILL.md routing table URLs
  echo "Extracting filenames from SKILL.md routing table..."
  mapfile -t skill_files < <(
    grep -oP 'templates/\K[0-9]{2}-[a-z0-9-]+\.md' "$SKILL_FILE" | sort -u
  )
  echo "  Found ${#skill_files[@]} entries in routing table"
  echo ""

  # Get actual files in templates/
  mapfile -t actual_files < <(
    find "$TEMPLATES_DIR" -maxdepth 1 -name "*.md" -printf "%f\n" | sort
  )
  echo "  Found ${#actual_files[@]} files in templates/"
  echo ""

  # Check: every file in SKILL.md exists in templates/
  echo "Checking: Every SKILL.md entry has a matching template file..."
  for skill_file in "${skill_files[@]}"; do
    if [[ -f "$TEMPLATES_DIR/$skill_file" ]]; then
      echo "  PASS: $skill_file"
    else
      echo "  FAIL: $skill_file is in SKILL.md but missing from templates/"
      ERRORS=$((ERRORS + 1))
    fi
  done
  echo ""

  # Check: every file in templates/ is referenced in SKILL.md
  echo "Checking: Every template file is in the SKILL.md routing table..."
  for actual_file in "${actual_files[@]}"; do
    found=false
    for skill_file in "${skill_files[@]}"; do
      if [[ "$actual_file" == "$skill_file" ]]; then
        found=true
        break
      fi
    done
    if [[ "$found" == "true" ]]; then
      echo "  PASS: $actual_file"
    else
      echo "  FAIL: $actual_file exists in templates/ but is not in SKILL.md"
      ERRORS=$((ERRORS + 1))
    fi
  done

else
  echo "Usage: bash validate-completeness.sh [completeness|crossref]"
  exit 1
fi

echo ""
echo "=== Results ==="

if [[ "$ERRORS" -gt 0 ]]; then
  echo "FAILED: $ERRORS error(s) found"
  exit 1
else
  echo "PASSED: All checks passed"
  exit 0
fi
