# Example project linting setup

This is a simple example of using [typicode/husky](https://github.com/typicode/husky) and [okonet/lint-staged](https://github.com/okonet/lint-staged) to lint changed files using git hooks.

This configuration is setup on a per-project basis.

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

## Setup config files

### Setup lint-staged

In the project directory, create the file [.lintstagedrc](.lintstagedrc) with the following contents
```
{
  "*.js": "eslint",
  "*.php": ["php -l", "phpcs"]
}
```

This will run eslint on JS files and a PHP syntax check and phpcs on PHP files.

### Setup husky

While it's possible to add the husky configuration to your `package.json` file, we recommend using a [.huskyrc](.huskyrc) file instead.
```
{
    "hooks": {
        "pre-commit": "lint-staged",
        "pre-push": "lint-staged"
    }
}
```

The above husky config file will run all lint-staged actions pre commit and pre push.

### Setup eslint

We recommend configuring eslint using VIA's [js coding standards](https://github.com/viastudio/coding-standards/tree/master/js/eslint).

Once eslint is configured, symlink your `.eslintrc.json` file into the project directory.
```
ln -s ~/.eslintrc.json /path/to/project/.eslintrc.json
```

### Setup phpcs

Once again, we recommend configuring phpcs using VIA's [php coding standards](https://github.com/viastudio/coding-standards/tree/master/php/phpcs)

## Notes

In the event that you need to commit without linting, simply add the `--no-verify` option to your git command.