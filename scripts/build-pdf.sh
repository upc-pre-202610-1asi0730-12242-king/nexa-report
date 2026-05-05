#!/usr/bin/env bash
set -euo pipefail

REPORT_DIR="report"
DIST_DIR="dist"
OUTPUT="$DIST_DIR/nexa-report.pdf"

mkdir -p "$DIST_DIR"

# Files in document order; 5.3 and 5.4 excluded (future milestone placeholders)
SOURCES=(
  "$REPORT_DIR"/front-matter/01-cover.md
  "$REPORT_DIR"/front-matter/02-version-history.md
  "$REPORT_DIR"/front-matter/03-table-of-contents.md
  "$REPORT_DIR"/front-matter/04-project-report-collaboration-insights.md
  "$REPORT_DIR"/front-matter/05-student-outcome.md
  $(find "$REPORT_DIR/10-chapter-1-introduction" -name "*.md" | sort)
  $(find "$REPORT_DIR/20-chapter-2-requirements-elicitation" -name "*.md" | sort)
  $(find "$REPORT_DIR/30-chapter-3-requirements-specification" -name "*.md" | sort)
  $(find "$REPORT_DIR/40-chapter-4-product-design" -name "*.md" | sort)
  "$REPORT_DIR/50-chapter-5-implementation-validation-deployment/5-1-software-configuration-management.md"
  "$REPORT_DIR/50-chapter-5-implementation-validation-deployment/5-2-landing-page-services-and-applications-implementation.md"
  "$REPORT_DIR"/90-conclusions.md
  "$REPORT_DIR"/99-bibliography.md
  $(find "$REPORT_DIR/annexes" -name "*.md" | sort)
)

# Note: Mermaid code blocks render as literal code in PDF output.
# To render diagrams, convert them to images in Figma or a Mermaid CLI first.

pandoc "${SOURCES[@]}" \
  --toc \
  --standalone \
  --pdf-engine=xelatex \
  --metadata title="Nexa — Informe Académico" \
  --metadata lang="es" \
  -o "$OUTPUT"

echo "PDF generado: $OUTPUT"
