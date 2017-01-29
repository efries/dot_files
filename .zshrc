# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
# Install Fonts:
# brew tap caskroom/fonts     
# brew cask search /nerd/ 
# brew cask install font-meslo-nerd-font 
# and change font in iterm2
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
WERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# Output time, date, and a symbol from nerd (awesome) font
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \uF0CE  %d.%m.%y}"

# Add wisely, as too many plugins slow down shell startup.
# git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
plugins=(git mix npm brew osx zsh-autosuggestions vi-mode)

# Aliase
alias locate="mdfind"
alias vim="nvim"
alias vimdiff="nvim -d"

# User configuration
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
# more in: ~/.zprofile

# NPM - Do not "sudo" !!
# https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# install elixir and phoenix
# https://gist.github.com/likethesky/abb00e5aedc38ee9f711

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
