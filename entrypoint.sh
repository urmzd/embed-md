#!/usr/bin/env bash

# COMMIT_MESSAGE
# COMMIT_AUTHOR
# PUSH
# MARKDOWN_FILES

commit_changes() {
  git add .
  git commit -m "$1"
  git push
}

embed_files() {
  npx embedme "$@"
}

push_changes() {
  git push
}

embed_files
commit_changes "$1"
push_changes
