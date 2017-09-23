# Path
export ZSH=/home/dyllan/.oh-my-zsh
#export TERM="screen-256color"

# Directory Colors
POWERLEVEL9K_DIR_HOME_BACKGROUND='245'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='245'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='245'
POWERLEVEL9K_DIR_HOME_FOREGROUND='235'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='235'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='235'

# Github colors
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='236'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='106'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='236'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='166'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='236'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='124'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='236'

# General
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Functions
if [ -n "$DISPLAY" ]; then
    xset b off
fi

# Theme
ZSH_THEME="powerlevel9k/powerlevel9k"
export GTK2_RC_FILES=$HOME/.gtkrc-2.0

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias upgrade='sudo newsbeuter -r && sudo pacman -Syu'
alias clear-cache='sudo paccache -rk1 && sudo paccache -ruk0'
alias reboot='systemctl reboot'
alias suvim='sudo -E vim'
alias df='df -h'
alias free='free -m'
alias cp='cp -i'
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias list-orphans='pacman -Qdt'
alias remove-orphans='sudo pacman -R $(pacman -Qqdt)'
