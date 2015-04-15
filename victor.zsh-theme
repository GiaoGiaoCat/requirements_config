DALLAS_SPACE_MARK_=' - '
DALLAS_MARK_FIRST_='%{$fg[blue]%}%B┌─'
DALLAS_MARK_SECOND_='%{$fg[blue]%}%B└─'
# Grab the current date (%D) and time (%T) wrapped in {}: {%D %T}
DALLAS_CURRENT_TIME_="%{$fg[blue]%}[%{$fg[yellow]%}%D{%Y-%m-%d %I:%M:%S}%b%{$fg[blue]%}]%{$reset_color%}"
# Grab the current version of ruby in use (via RVM): [ruby-1.8.7]
DALLAS_CURRENT_RUBY_="%{$fg[blue]%}[%{$fg[magenta]%}\$(~/.rvm/bin/rvm-prompt i v g)%{$fg[blue]%}]%{$reset_color%}"
# Grab the current machine name: muscato
DALLAS_CURRENT_MACH_="%{$fg[green]%}%m%{$fg[blue]%}]%{$reset_color%}"
# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "%{$fg[cyan]%}git$ZSH_THEME_GIT_PROMPT_SUFFIX:%{$fg[green]%}${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Checks if working tree is dirty
parse_git_dirty() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "$ZSH_THEME_GIT_PROMPT_DIRTY"
}
DALLAS_CURRENT_LOCA_="%{$fg[blue]%}[%{$fg[cyan]%}%~%{$fg[blue]%}]%{$reset_color%}"
# parse_git_dirty make makes the prompt so slow.
# Check out how the steeef theme handles git repositories. Works really fast.
# DALLAS_CURRENT_GITS_="%{$fg[blue]%}[\$(git_prompt_info)\$(parse_git_dirty)%{$fg[blue]%}]%{$reset_color%}"
DALLAS_CURRENT_GITS_="%{$fg[blue]%}[\$(git_prompt_info)%{$fg[blue]%}]%{$reset_color%}"
# Grab the current username: dallas
DALLAS_CURRENT_USER_="%{$fg[blue]%}[%{$fg[magenta]%}%n%{$fg[white]%}@%{$reset_color%}"
# Use a % for normal users and a # for privelaged (root) users.
DALLAS_PROMPT_CHAR_="%{$fg[white]%}%(!.#.%%)%{$reset_color%}"
# For the git prompt, use a white @ and blue text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@%{$fg[blue]%}"
# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""
# Add 3 cyan ✗s if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="✗"

# Put it all together!
PROMPT="$DALLAS_MARK_FIRST_$DALLAS_PREFIX_MARK_1_$DALLAS_CURRENT_TIME_$DALLAS_SPACE_MARK_$DALLAS_CURRENT_RUBY_$DALLAS_SPACE_MARK_$DALLAS_CURRENT_LOCA_
%{$fg[blue]%}%B└─$DALLAS_CURRENT_GITS_ "
