# load zgen
export ZSH_TMUX_AUTOSTART=false
export ZGENOM_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)
source ${HOME}/.zgenom/zgenom.zsh
alias ssh="TERM=xterm ssh"
# if the init scipt doesn't exist
if ! zgenom saved; then

  # specify plugins here
  zgenom oh-my-zsh
  zgenom oh-my-zsh plugins/macos
  zgenom oh-my-zsh plugins/git
  zgenom oh-my-zsh plugins/tmux
  zgenom oh-my-zsh plugins/brew
  zgenom oh-my-zsh plugins/fzf
  zgenom oh-my-zsh plugins/gradle
  zgenom oh-my-zsh plugins/helm
  zgenom oh-my-zsh plugins/kubectl
  #zgenom oh-my-zsh themes/ys
  zgenom load zsh-users/zsh-syntax-highlighting

  # generate the init script from plugins above
  zgenom save
fi

alias ll='ls -lh'
alias ls='ls -G'
alias mkdir='mkdir -p'
alias ping='ping -c 3'
alias wget='wget -c'
alias tpl='tmuxp load'

function tab_name {
  printf "\e]1;$1\a"
}

function proj(){
  PROJECT_NAME=$1 tmuxp load git_project
}

if [[ -d "/Users/${USER}/Workspaces" ]] && [[ "$(pwd)" == "/Users/${USER}" ]]; then
  cd ~/Workspaces
fi

eval "$(pyenv init -)"

[[ -s ~/.secondary_dotfiles/.shortcuts ]] && \
  source ~/.secondary_dotfiles/.shortcuts

eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/xbbnrn1/.sdkman"
[[ -s "/Users/xbbnrn1/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/xbbnrn1/.sdkman/bin/sdkman-init.sh"
