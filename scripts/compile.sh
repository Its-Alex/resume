#!/usr/bin/env bash
set -e

docker run \
    -v "./:/workdir" \
    -e "TYPST_FONT_PATHS=/workdir/fonts" \
    --workdir "/workdir" \
    -it \
    --rm \
    ghcr.io/typst/typst:v0.10.0 typst compile main_en.typ cv_en.pdf
docker run \
    -v "./:/workdir" \
    -e "TYPST_FONT_PATHS=/workdir/fonts" \
    --workdir "/workdir" \
    -it \
    --rm \
    ghcr.io/typst/typst:v0.10.0 typst compile main_fr.typ cv_fr.pdf
