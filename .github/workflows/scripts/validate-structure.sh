#!/usr/bin/env bash
# validate-structure.sh
# Validates structural requirements for every template in templates/

set -euo pipefail

TEMPLATES_DIR="templates"
ERRORS=0

# Required YAML front matter fields
REQUIRED_FIELDS=("title" "type" "version" "created" "updated" "status")

echo "=== MD Standards Structure Validation ==="
echo ""

# Check templates directory exists
if [[ ! -d "$TEMPLATES_DIR" ]]; then
  echo "FAIL: templates/ directory not found"
  exit 1
fi

for file in "$TEMPLATES_DIR"/*.md; do
  filename=$(basename "$file")
  file_errors=0

  echo "Checking: $filename"

  # 1. Filename matches pattern NN-name.md
  if ! [[ "$filename" =~ ^[0-9]{2}-[a-z0-9-]+\.md$ ]]; then
    echo "  FAIL: Filename does not match pattern NN-name.md"
    file_errors=$((file_errors + 1))
  fi

  # 2. File is valid UTF-8
  if ! iconv -f UTF-8 -t UTF-8 "$file" > /dev/null 2>&1; then
    echo "  FAIL: File is not valid UTF-8"
    file_errors=$((file_errors + 1))
  fi

  # 3. YAML front matter exists (starts with ---)
  first_line=$(head -n 1 "$file")
  if [[ "$first_line" != "---" ]]; then
    echo "  FAIL: File does not start with YAML front matter (---)"
    file_errors=$((file_errors + 1))
  else
    # Extract front matter (between first and second ---)
    front_matter=$(sed -n '2,/^---$/p' "$file" | head -n -1)

    # 4. Check required fields exist in front matter
    for field in "${REQUIRED_FIELDS[@]}"; do
      if ! echo "$front_matter" | grep -q "^${field}:"; then
        echo "  FAIL: Missing required front matter field: $field"
        file_errors=$((file_errors + 1))
      fi
    done
  fi

  # 5. Exactly one H1 heading
  h1_count=$(grep -c "^# " "$file" || true)
  if [[ "$h1_count" -eq 0 ]]; then
    echo "  FAIL: No H1 heading found"
    file_errors=$((file_errors + 1))
  elif [[ "$h1_count" -gt 1 ]]; then
    echo "  FAIL: Multiple H1 headings found ($h1_count)"
    file_errors=$((file_errors + 1))
  fi

  # 6. No trailing whitespace
  trailing=$(grep -n ' $' "$file" || true)
  if [[ -n "$trailing" ]]; then
    count=$(echo "$trailing" | wc -l)
    echo "  FAIL: Trailing whitespace on $count line(s)"
    echo "$trailing" | head -5 | while read -r line; do
      echo "    Line $line"
    done
    file_errors=$((file_errors + 1))
  fi

  # 7. File ends with exactly one newline
  if [[ ! -s "$file" ]]; then
    echo "  FAIL: File is empty"
    file_errors=$((file_errors + 1))
  else
    # Check last byte is a newline
    last_byte=$(tail -c 1 "$file" | xxd -p)
    if [[ "$last_byte" != "0a" ]]; then
      echo "  FAIL: File does not end with a newline"
      file_errors=$((file_errors + 1))
    fi

    # Check no double newline at end
    last_two=$(tail -c 2 "$file" | xxd -p)
    if [[ "$last_two" == "0a0a" ]]; then
      echo "  FAIL: File ends with multiple newlines"
      file_errors=$((file_errors + 1))
    fi
  fi

  if [[ "$file_errors" -eq 0 ]]; then
    echo "  PASS"
  fi

  ERRORS=$((ERRORS + file_errors))
done

echo ""
echo "=== Results ==="

if [[ "$ERRORS" -gt 0 ]]; then
  echo "FAILED: $ERRORS error(s) found"
  exit 1
else
  echo "PASSED: All structure checks passed"
  exit 0
fi
