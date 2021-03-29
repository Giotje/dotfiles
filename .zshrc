# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to my oh-my-zsh installation.
export ZSH="/home/gio/.oh-my-zsh"
eval "$(rbenv init -)"
eval "$(thefuck --alias)"
# Prompt
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
ENABLE_CORRECTION="true"
## colorls configuration
source $(dirname $(gem which colorls))/tab_complete.sh

# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker kubectl zsh-autosuggestions zsh-syntax-highlighting)

# Show Path
alias path='echo -e ${PATH//:/\\n}'
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Show available commands
alias ls="colorls"
alias la="cat ~/.zshrc | grep alias | cut -c 7-"
alias lf="cat ~/.zshrc | grep function | cut -c 7-"
function plugins() {
  echo howdoi \n task \n lolcat \n ag \n googler \n jrnl \n jira
}

# become root #
alias root='sudo -i'
alias su='sudo -i'

# Configuration
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias chrome="open -a \"Google Chrome\""
alias gitconfig="vim ~/.gitconfig"
# Navigation
## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Setup quick local server in cwd
alias pythonserver="python -m SimpleHTTPServer"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/gio/Documents/kraken/react-redirect/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/gio/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/gio/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
