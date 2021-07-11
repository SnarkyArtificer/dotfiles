# load zgen
export ZSH_TMUX_AUTOSTART=false
export ZGENOM_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)
source ${HOME}/.zgenom/zgenom.zsh
alias ssh="TERM=xterm ssh"
# if the init scipt doesn't exist
if ! zgenom saved; then

  # specify plugins here
  zgenom oh-my-zsh
  zgenom oh-my-zsh plugins/osx
  zgenom oh-my-zsh plugins/git
  zgenom oh-my-zsh plugins/tmux
  zgenom oh-my-zsh plugins/brew
  zgenom oh-my-zsh plugins/fzf
  zgenom oh-my-zsh plugins/gradle
  zgenom oh-my-zsh plugins/helm
  zgenom oh-my-zsh plugins/kubectl
  zgenom oh-my-zsh themes/ys
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

#terminal Colors, shamelessly stolen from
#https://github.com/jacaetevha/finna-be-octo-hipster
#and tweaked to be ugly ;)

function tab_red()    { tab_color 200 32  32; }
function tab_orange() { tab_color 220 140 32; }
function tab_green()  { tab_color 32  200 32; }
function tab_light_blue()   { tab_color 32 64 200; }
function tab_blue()   { tab_color 32  64 200; }
function tab_purple()  { tab_color 160 32 160; }
function tab_yellow() { tab_color 200 200 32; }
function tab_white()  { tab_color 255 255 255; }

function tab_color() {
  echo -n -e "\033]6;1;bg;red;brightness;$1\a"
  echo -n -e "\033]6;1;bg;green;brightness;$2\a"
  echo -n -e "\033]6;1;bg;blue;brightness;$3\a"
}

function proj(){
  PROJECT_NAME=$1 tmuxp load git_project
}

[[ -s ~/.secondary_dotfiles/.shortcuts ]] && \
  source ~/.secondary_dotfiles/.shortcuts

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/xbbnrn1/.sdkman"
[[ -s "/Users/xbbnrn1/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/xbbnrn1/.sdkman/bin/sdkman-init.sh"
