# >>> idling
# >>> an oh-my-zsh theme by Mike Dory | dory.me
# >>> last updated: 05.11.13
# 
# Change $PROMPT_DECORATOR for your local machine preferences

PROMPT_DECORATOR="%{$fg_bold[red]%}>>>"

if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then  
  PROMPT='$PROMPT_DECORATOR %{$fg[cyan]%}%c$(git_prompt_info) %(!.%{$fg_bold[red]%}#.%{$fg_bold[yellow]%})%{$reset_color%}'

  ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}git%{$reset_color%}:%{$fg[blue]%}{%{$fg_bold[red]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}}%{$fg_bold[yellow]%} ☂ %{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}}"
else 
  PROMPT='%c$(git_prompt_info) %(!.#.❯) '

  ZSH_THEME_GIT_PROMPT_PREFIX=" git:"
  ZSH_THEME_GIT_PROMPT_SUFFIX=""
  ZSH_THEME_GIT_PROMPT_DIRTY=""
  ZSH_THEME_GIT_PROMPT_CLEAN=""
fi
