# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


export PATH=~/.npm-global/bin:$PATH

ZSH_THEME="powerlevel10k/powerlevel10k"


export ORACLE_HOME=/Users/todev/oracle/instantclient_23_3 
export DYLD_LIBRARY_PATH=$ORACLE_HOME:$DYLD_LIBRARY_PATH
export OCI_LIB_DIR=$ORACLE_HOME
export OCI_INC_DIR=$ORACLE_HOME
export PATH=$ORACLE_HOME:$PATH
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

alias nrd="npm run dev"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gpull="git pull"
alias gp="git push"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
