#!/usr/bin/env bash
set -euo pipefail

REPO_NWO="sortsamcdonald/sortsammcdonald.github.io"

# Ensure the gem cache volume exists (no-op if it already does)
docker volume inspect jekyll_bundle_cache >/dev/null 2>&1 || docker volume create jekyll_bundle_cache >/dev/null

docker run --rm -it \
  -p 4000:4000 \
  -v "$PWD":/srv/jekyll \
  -v jekyll_bundle_cache:/usr/local/bundle \
  -w /srv/jekyll \
  -e PAGES_REPO_NWO="$REPO_NWO" \
  jekyll/jekyll:pages \
  bash -lc "
    apk add --no-cache build-base ruby-dev linux-headers zlib-dev libxml2-dev libxslt-dev >/dev/null &&
    bundle config set path /usr/local/bundle >/dev/null &&
    bundle install &&
    bundle exec jekyll serve --host 0.0.0.0 --port 4000 --watch --force_polling
  "