# Embed MD 📄➡️🔗
Automate embedding code into markdown files with this easy-to-use GitHub Action.

## Features 🌟
- **Automatic Embedding**: Effortlessly embed code snippets.
- **Custom Commit Options**: Personalize commit messages, author details, and push actions.
- **Seamless Integration**: Integrates easily with GitHub workflows.

## Usage 🛠️
Include Embed MD in your GitHub Actions workflow like this:
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
        uses: urmzd/embed-md@v1.3.4
        id: "embed-code"
        with:
          markdown-files: "README.md"
          commit-message: "chore: embed example using self"
          commit-name: Urmzd Mukhammadnaim
          commit-email: <urmzd@noreply.com>
          commit-push: "false"

```

### Using Locally
To use Embed MD locally:
1. **Build Using Docker**: Build the Docker image from the Dockerfile.
2. **Set Environment Variables**: Configure necessary environment variables like `COMMIT_MESSAGE`, `COMMIT_NAME`, etc.
3. **Mount Desired Volumes**: Mount your project directories as volumes to the Docker container to enable Embed MD to access and modify the markdown files.

## Internal Use 🏭
We use Embed MD in our own CI/CD pipelines, ensuring our documentation is always synchronized with the latest code.

## Acknowledgements 👏
Special thanks to the tools and people behind [embedme](https://github.com/zakhenry/embedme).