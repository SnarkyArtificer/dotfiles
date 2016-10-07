# load zgen
source ${HOME}/.bash_profile

export ZSH_TMUX_AUTOSTART=true
source ${HOME}/.zgen/zgen.zsh
alias ssh="TERM=xterm ssh"
# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/osx
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh themes/ys
  zgen load zsh-users/zsh-syntax-highlighting

  # generate the init script from plugins above
  zgen save
fi