ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
function git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX "
  fi
}

function rvm_version {
  if $THEME_RUBY; then
    echo %{$fg[red]%}\[$(~/.rvm/bin/rvm-prompt)\]%{$reset_color%} 
  fi
}

function user_host() {
  echo $fg[cyan]%n@%m%{$reset_color%}
}

function get_pwd() {
  echo $fg[yellow]%~%{$reset_color%}
}


function precmd() {
  print -rP '$(user_host) $(git_custom_status)$(rvm_version)$(get_pwd)'
}

# RPROMPT='$(git_custom_status)$(rvm_version)'
PROMPT='%(?.%{$fg[green]%}.%{$fg[red]%})➜%{$reset_color%} '