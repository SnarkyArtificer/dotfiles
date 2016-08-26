# load zgen
source ${HOME}/.bash_profile
source ${HOME}/.zgen/zgen.zsh

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/osx
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh themes/gnzh
  zgen load martnu/glimmer

  # generate the init script from plugins above
  zgen save
fi
