# Example project linting setup

This is a simple example of using [typicode/husky](https://github.com/typicode/husky) and [okonet/lint-staged](https://github.com/okonet/lint-staged) to lint changed files using git hooks.

### Inspiration

This setup borrows heavily from [Easy git hooks with Husky](https://www.vojtechruzicka.com/githooks-husky/) and [Using lint-staged, husky, and pre-commit hooks to fail fast and early](https://codeburst.io/continuous-integration-lint-staged-husky-pre-commit-hook-test-setup-47f8172924fc)

## Install packages

This setup requires the following packages:
* husky
* lint-staged
* eslint
* eslint-plugin-jsx-a11y
* eslint-plugin-react-hooks

```
npm i --save-dev husky lint-staged eslint eslint-plugin-jsx-a11y eslint-plugin-react-hooks
```