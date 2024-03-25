#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

typst watch "cv_${1}.typ"
