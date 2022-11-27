# Embed Md

Embed code directly into your markdown files with ease.

## Usage

```yaml
# .github/workflows/test.yml

name: "Test"

on: [push]

jobs:
  embed-example:
    runs-on: ubuntu-latest
    steps:
      - name: "Checkout current repo"
        uses: actions/checkout@v3
      - name: "Run entrypoint script."
        uses: ./
        id: "embed-code" 
        with:
          markdown-files: "README.md" 
          commit-message: "chore: embed example using self"

```

