local ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜%s)"
PROMPT='%{$fg_bold[green]%}%p%{$fg[yellow]%}%j %{$fg[blue]%}${PWD/#$HOME/~} ${ret_status}%{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[cyan]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}] %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%}]"
