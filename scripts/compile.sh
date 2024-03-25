#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

typst compile --font-path fonts cv_fr.typ cv_fr.pdf
typst compile --font-path fonts cv_en.typ cv_en.pdf
