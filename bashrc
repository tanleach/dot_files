# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#######################################
# User specific aliases and functions #
#######################################

#PATH=/bin:/usr/lib/qt-3.3/bin:/usr/java/latest/bin:/usr/lib/ccache:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/usr/libexec/sdcc:/home/s000189652/bin:/usr/libexec/sdcc:/cs/bin:/usr/games:

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/home/tanleach/bin/:/home/tanleach/tools/:$PATH
export PS1='\[\033[36;1m\]\h:\[\033[32m\]\W\[\033[0m\]\$'

alias vi=vim
alias lart='ls --color -lart'
alias ll='ls --color -lG'
alias cat='tail -n +1'

cd() { builtin cd "$@" && ll; }

export TERM="screen-256color"

parse_git_branch() {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1=$PS1"\$(parse_git_branch)\[\033[00m\] "

