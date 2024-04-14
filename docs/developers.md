# Developers

This page contains essential information for developers who are contributing to this pattern.

## pre-commit

This project uses [`pre-commit`](https://pre-commit.com/) as a mechanism to ensure code quality. `pre-commit` is enforced on pull requests as part of the CI pipeline. Installing pre-commit into a developers environment ensures that the quality checks will pass before code is pushed to github.

Install by:

```bash
pip install pre-commit
pre-commit install 
```

developers can force `pre-commit` to run across all files by runnign `pre-commit run --all-files`. This will ensure every file is covered, including those which have already being commited. Standard runs will only check files with a change in git.

## Documentation continuous integration checks

As part of the GitHub actions CICD projects there are a number of checks which inspect markdown documents.

Validation can fail for a number of reasons:

1. Spelling mistakes including use of colloquial terms e.g. `repo` versus `repository` by the `superlinter`
1. Markdown document structure, enforced by the `pre-commit` and by the `superlinter`
1. Unlinked or dead links in the documentatuon website.

### Dealing with unexpected spelling 'mistakes'

If a false-positive occurs for spelling mistakes:

1. Add the word to `known-words.txt` or;
1. If appropriate use inline `code` blocks to escape the word.
