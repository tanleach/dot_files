# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
ZSH_THEME="jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias zshconfig="source ~/.zshrc"
alias ohmyzsh="source ~/.oh-my-zsh"
alias gogh='bash -c  "$(curl -sLo- https://git.io/vQgMr)"'
alias ll='ls -lhart'

# Lazy Vagrant
alias vssh='vagrant ssh'
alias vup='vagrant up'
alias vdup='vagrant up --debug'
alias vstop='vagrant halt'
alias vubu='vagrant init bytesguy/ubuntu-server-20.04-arm64'
alias vagrantvim='vagrant upload ~/vagrantHelpers/.vimrc'
alias vstatus='vagrant status'
alias vkill='vagrant destroy'

# there is only one rc file i could be referring to
alias vimrc='vi ~/.vimrc'
alias zshrc='vi ~/.zshrc'
alias tmuxconf='vi ~/.tmux.conf'

# git helpers
alias gitlog='git log --oneline -n5'
alias gl='git log --oneline -n5'
alias gr='git remote'
alias grv='git remote -v'


# vault helpers
alias vaultlogin='source ~/.vault_env && vault login -method=ldap username=tleach'

# aws helpers
alias updateAWS='rm ~/.aws/credentials && echo "[default]" > ~/.aws/credentials && pbpaste >> ~/.aws/credentials'

# postgres helpers
alias pg_alertsnitch='psql -h sc-itml-db-01.nvidia.com -U alertsnitch'
alias rmrf='rm -rf'


# mac specific
alias turnOnWifi='networksetup -setairportpower airport on'
alias turnOffWifi='networksetup -setairportpower airport off'
alias sshOn='sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist'
alias sshOff='sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist'
alias sshReset='sshOff && sleep 3 && sshOn'


export GOPATH=/Users/tleach/go

PAGER=cat
