#!/bin/bash

PROJECT_URL="https://raw.githubusercontent.com/markbiek/husky-example/master"
HUSKYRC=".huskyrc"
LINTRC=".lintstagedrc"
ESLINTRC="$HOME/.eslintrc.json"
PROJECT_DIR="`pwd`"
PACKAGES="husky lint-staged eslint eslint-plugin-jsx-a11y eslint-plugin-react-hooks"

if [ ! -f "$PROJECT_DIR/package.json" ]; then
    echo "ERROR: Could not find package.json in the current directory."
    exit 1
fi

if [ ! -f $ESLINTRC ]; then
    echo "ERROR: Could not find $HOME/.eslintrc.json"
    exit 1
fi

# Install dev packages
npm i --save-dev $PACKAGES

# Download config files
curl -q "$PROJECT_URL/$HUSKYRC" > $HUSKYRC
curl -q "$PROJECT_URL/$LINTRC" > $LINTRC

# Add eslintrc
ln -s $ESLINTRC