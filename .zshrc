# load zgen
#source ${HOME}/.bash_profile

export ZSH_TMUX_AUTOSTART=true
source ${HOME}/.zgen/zgen.zsh

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/osx
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh themes/gnzh
  zgen load zsh-users/zsh-syntax-highlighting

  # generate the init script from plugins above
  zgen save
fi

[[ -s ~/.my_shortcuts/.shortcuts ]]  && source ~/.my_shortcuts/.shortcuts
[[ -s ~/.my_shortcuts/.osx_shortcuts ]]  && source ~/.my_shortcuts/.osx_shortcuts
[[ -s ~/.ctct_shortcuts/.shortcuts ]]  && source ~/.ctct_shortcuts/.shortcuts
