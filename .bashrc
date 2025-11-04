#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

# Useful links for making terminal prettier
# https://wiki.archlinux.org/title/Color_output_in_console

# for more colours in LS_COLORS
eval $(dircolors)
# -F indicates types of file by appending directories with /, symlinks with @ and sockets with =
alias ls='ls --color=auto --time-style=long-iso -F'
alias ll='ls -l'
alias la='ls -la'
alias grep='grep --color=auto'
alias less='less --quit-if-one-screen -R --use-color'
alias diff='diff --color=auto'
alias ip='ip -color=auto'

PS1='[\u@\h \W]\$ '

# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

echo
fastfetch
