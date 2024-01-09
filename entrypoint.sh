#!/usr/bin/env bash

_commit_changes() {
  git add "${MARKDOWN_FILES[@]}"
  git commit -m "$COMMIT_MESSAGE" --author="$COMMIT_AUTHOR"
}

_embed_files() {
  npx embedme "${MARKDOWN_FILES[@]}"
}

_push_changes() {
  git push
}

main () {
  _embed_files
  _commit_changes

  if [[ "$PUSH" == "true" ]]; then
    _push_changes
  fi
}

main