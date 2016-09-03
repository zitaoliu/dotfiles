

# shortcut for tmux
alias ta='tmux a -t '
alias tn='tmux new -s '
alias tk='tmux kill-session -t '

alias gcc='gcc-6'

# environment variables
#export JAVA_HOME=""
#export PYTHONPATH=""
export USER=zitaoliu
export CC=/usr/local/bin/gcc-6

# git branch visualization

function print_symlink {
    wd="$(pwd)"
    linkdir="$(readlink -n $wd)";
    if readlink -n $wd >/dev/null; then
echo " -> $linkdir ";
    fi
}
 
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("${ref#refs/heads/}") "
}
 
alias ls='ls -F'
alias rm='rm -i'
 
export PS1='[\T]\[\e[0;32m\] \w\[\e[0;36m\]$(print_symlink)\[\e[0;31m\]$(parse_git_branch)\[\e[0m\] $ '
