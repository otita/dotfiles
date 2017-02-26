PATH=/usr/local/include:$PATH
PATH=/usr/local/bin:$PATH
PATH=/Library/TeX/texbin:$PATH

#for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT/bin:$PATH
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export XDG_CONFIG_HOME=$HOME/.config

# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完への機能追加
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**' 

# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリを追加しない
setopt pushd_ignore_dups
 
 
# グローバルエイリアス
alias -g L='| less'
alias -g G='| grep'
 
# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt share_history
setopt hist_ignore_space
setopt hist_verify
setopt hist_reduce_blanks  
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_expand
setopt inc_append_history
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward
 
# emacs 風キーバインドにする
bindkey -e
 
# その他とりあえずいるもの
export LANG=ja_JP.UTF-8
 
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
 
# フローコントロールを無効にする
setopt no_flow_control
 
# '#' 以降をコメントとして扱う
setopt interactive_comments

autoload colors
colors

PROMPT="%{${fg[yellow]}%}%~%{${reset_color}%} 
[%n]$ "

PROMPT2='[%n]> '

# alias
#alias run_jupyter='ssh -L 9999:localhost:9999 pisa -fN'

alias ctags="`brew --prefix`/bin/ctags"
