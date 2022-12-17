#!/bin/sh

# git filter-branch --env-filter '

# OLD_EMAIL="muhammad.ichsanul19@gmail.com"
# CORRECT_NAME="amalisnull"
# CORRECT_EMAIL="nullamallchsan@gmail.com"

# if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
# then
#     export GIT_COMMITTER_NAME="$CORRECT_NAME"
#     export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
# fi
# if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
# then
#     export GIT_AUTHOR_NAME="$CORRECT_NAME"
#     export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
# fi
# ' --tag-name-filter cat -- --branches --tags

git add .
git commit -m "$*"
git push

# Variable    Meaning
# $0          Filename of script
# $1          Positional parameter #1
# $2 - $9     Positional parameters #2 - #9
# ${10}       Positional parameter #10
# $#          Number of positional parameters
# "$*"        All the positional parameters (as a single word) *
# "$@"        All the positional parameters (as separate strings)
# ${#*}       Number of positional parameters
# ${#@}       Number of positional parameters
# $?          Return value
# $$          Process ID (PID) of script
# $-          Flags passed to script (using set)
# $_          Last argument of previous command
# $!          Process ID (PID) of last job run in background

# * Must be quoted, otherwise it defaults to $@.
#