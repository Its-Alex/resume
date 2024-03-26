#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

typst watch "resume_${1}.typ"
