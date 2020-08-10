# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

ATTRIBUTE_BOLD='\[\e[1m\]'
ATTRIBUTE_RESET='\[\e[0m\]'
COLOR_DEFAULT='\[\e[39m\]'
COLOR_RED='\[\e[31m\]'
COLOR_GREEN='\[\e[32m\]'
COLOR_YELLOW='\[\e[33m\]'
COLOR_BLUE='\[\e[34m\]'
COLOR_MAGENTA='\[\e[35m\]'
COLOR_CYAN='\[\e[36m\]'

# machine_name() {
#     if [[ -f $HOME/.name ]]; then
#         cat $HOME/.name
#     else
#         hostname
#     fi
# }
# Gotham Shell
GOTHAM_SHELL="$HOME/.config/gotham/gotham.sh"
[[ -s $GOTHAM_SHELL ]] && source $GOTHAM_SHELL

PROMPT_DIRTRIM=3
PS1="${COLOR_CYAN}${ATTRIBUTE_BOLD}\\u${ATTRIBUTE_RESET}${COLOR_DEFAULT}${COLOR_GREEN}${ATTRIBUTE_BOLD}@${ATTRIBUTE_RESET}${COLOR_DEFAULT}${COLOR_YELLOW}${ATTRIBUTE_BOLD}\W${ATTRIBUTE_RESET}${COLOR_DEFAULT} \$(if [ \$? -ne 0 ]; then echo \"${COLOR_RED}${ATTRIBUTE_BOLD}!${ATTRIBUTE_RESET}${COLOR_DEFAULT} \"; fi)"
PS1+="${ATTRIBUTE_BOLD}${COLOR_BLUE}>${COLOR_DEFAULT}${COLOR_RED}>${COLOR_DEFAULT}${COLOR_GREEN}>${COLOR_DEFAULT}${ATTRIBUTE_RESET} "

# User specific aliases and functions
alias jn='jupyter notebook'
# alias tmux='tmux -2'
# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'

# ls aliases
alias ll='ls -lah'
alias la='ls -A'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
