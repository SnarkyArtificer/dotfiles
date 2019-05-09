# load zgen
source ${HOME}/.bash_profile

export ZSH_TMUX_AUTOSTART=false
export ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)
source ${HOME}/.zgen/zgen.zsh
alias ssh="TERM=xterm ssh"
# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/osx
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/brew
  zgen oh-my-zsh plugins/gradle
  zgen oh-my-zsh plugins/helm
  zgen oh-my-zsh plugins/kubectl
  zgen oh-my-zsh themes/ys
  zgen load zsh-users/zsh-syntax-highlighting

  # generate the init script from plugins above
  zgen save
fi

# Returns whether the given command is executable or aliased.
_has() {
  return $( whence $1 >/dev/null )
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ -e /usr/local/opt/fzf/shell/completion.zsh ]; then
  source /usr/local/opt/fzf/shell/key-bindings.zsh
  source /usr/local/opt/fzf/shell/completion.zsh
fi

if _has fzf && _has ag; then
  export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
fi



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/xbbnrn1/.sdkman"
[[ -s "/Users/xbbnrn1/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/xbbnrn1/.sdkman/bin/sdkman-init.sh"
