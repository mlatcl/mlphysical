#!/bin/bash
# Compile lectures and worksheets listed in the CSVs (skip header row).
set -euo pipefail

cd "$(dirname "$0")"

compile_list() {
    local csv="$1"
    local skip=true
    local stub
    while IFS= read -r stub || [[ -n "$stub" ]]; do
        stub="${stub//$'\r'/}"
        [[ -z "$stub" ]] && continue
        if $skip; then
            skip=false
            continue
        fi
        echo "maketalk ${stub}.md"
        maketalk "${stub}.md"
    done < "$csv"
}

compile_list lectures.csv
if [[ -f worksheets.csv ]]; then
    compile_list worksheets.csv
fi

# Printable assessment handouts (pandoc), not LaMD.
handouts_dir="../assessments/handouts"
if [[ -f "${handouts_dir}/handouts.csv" ]]; then
    skip=true
    while IFS= read -r stub || [[ -n "$stub" ]]; do
        stub="${stub//$'\r'/}"
        [[ -z "$stub" ]] && continue
        if $skip; then
            skip=false
            continue
        fi
        echo "pandoc ${stub}.md -> tex/pdf"
        pandoc "${handouts_dir}/${stub}.md" -s -o "${handouts_dir}/${stub}.tex"
        pandoc "${handouts_dir}/${stub}.md" -o "${handouts_dir}/${stub}.pdf"
    done < "${handouts_dir}/handouts.csv"
fi
