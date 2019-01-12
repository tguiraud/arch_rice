#!/bin/bash
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#[ -f "$HOME/.shortcuts" ] && source "$HOME/.shortcuts" # Load shortcut aliases

# Vim-mode in terminal emulator
set -o vi

# --- Shortcuts and aliases --- #

# System Maintainence
alias mw="~/.config/mutt/mutt-wizard.sh"
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg
alias gua="git remote | xargs -L1 git push --all"

# Some aliases
alias sr="sudo ranger"
alias ref="shortcuts >/dev/null ; source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias mpv="mpv --input-ipc-server=/tmp/mpvsoc$(date +%s)"
alias x="sxiv -ft *"
alias lp="pacman -Qett --color=always | less"

# Editing j95.io files
alias todo="nvim ~/homepage/todo/todo.md"

# SSH
alias sshh="ssh j@j95.io"

# Editing config files
alias h="cd ~/ && ls -a"
alias cf="cd ~/.config && ls -a"
alias sc="cd ~/.scripts && ls -a"
alias mn="cd /mnt && ls -a"
alias vbc="$EDITOR ~/.bashrc; source ~/.bashrc; echo 'sourced new .bashrc'"
alias vzc="$EDITOR ~/.zshrc"
alias vvc="$EDITOR ~/.config/nvim/init.vim"
alias vrc="$EDITOR ~/.config/ranger/rc.conf"
alias vic="$EDITOR ~/.config/i3/config"
alias vmc="$EDITOR ~/.config/mutt/muttrc"
alias vnu="$EDITOR ~/.config/newsboat/urls"
alias vnc="$EDITOR ~/.config/newsboat/config"
alias vac="$EDITOR ~/.asoundrc"

alias cfmb="$EDITOR ~/.config/ncmpcpp/bindings"
alias cfmc="$EDITOR ~/.config/ncmpcpp/config"
alias cfmpd="$EDITOR ~/.config/mpd/mpd.conf"
alias cfM="$EDITOR ~/.config/mpd/mpd.conf"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias la='ls -ahN --color=auto --group-directories-first'
alias ll='ls -alhN --color=auto --group-directories-first'
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -i" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio
alias YT="youtube-viewer"

shdl() { curl -O $(curl -s http://sci-hub.tw/"$@" | grep location.href | grep -o http.*pdf) ;}
se() { du -a ~/.scripts/* ~/.config/* | awk '{print $2}' | fzf | xargs  -r $EDITOR ;}
sv() { vcopy "$(du -a ~/.scripts/* ~/.config/* | awk '{print $2}' | fzf)" ;}
vf() { fzf | xargs -r -I % $EDITOR % ;}
