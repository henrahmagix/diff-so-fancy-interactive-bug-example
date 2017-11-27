#!/usr/bin/env bash

if which diff-so-fancy >/dev/null; then
    git config interactive.difffilter diff-so-fancy
else
    echo "Missing diff-so-fancy. To install, see https://github.com/so-fancy/diff-so-fancy#install"
    echo "Continuing with git default"
    git config --unset interactive.difffilter
fi

cp changed original
git add --patch

echo "To compare the staged and unstaged changes:"
echo "  git diff --staged"
echo "  git diff"

echo "To undo the local changes:"
echo "  git reset -- original"
echo "  git checkout -- original"
