#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

typst compile --font-path fonts resume_fr.typ resume_fr.pdf
typst compile --font-path fonts resume_en.typ resume_en.pdf
