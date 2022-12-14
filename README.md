# Embed Md

Embed code directly into your markdown files with ease.

## Usage

```yaml
# examples/example.yml

name: "Example"

on: [release]

jobs:
  embed-example:
    runs-on: ubuntu-latest
    steps:
      - name: "Checkout current repo"
        uses: actions/checkout@v3
      - name: "Run entrypoint script."
        uses: urmzd/embed-md@v1.0.0
        id: "embed-code"
        with:
          markdown-files: "README.md"
          commit-message: "chore: embed example using self"

```

## Credits

Here are some of the open-source tools which make this project possible:

- [embedme](https://github.com/zakhenry/embedme)
