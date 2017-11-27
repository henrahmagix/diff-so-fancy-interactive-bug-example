# diff-so-fancy interactive bug example

A bug exists where diff-so-fancy shows the first line of the next hunk when used with `git add --patch` (using config `interactive.difffilter=diff-so-fancy`) and splitting a hunk with `s`.

This is confusing because it feels like accepting the hunk is accepting the first change of the next hunk, which it isn't actually doing.
