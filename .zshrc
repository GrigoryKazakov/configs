export ZSH="/home/grigory/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  zsh-autosuggestions
  git
)

source $ZSH/oh-my-zsh.sh


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=6"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
