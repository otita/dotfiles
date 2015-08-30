PATH=~/bin:$PATH
PATH=/usr/local/include:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/texbin:$PATH
export GOPATH=$HOME/.go
export GOROOT=/usr/local/opt/go/libexec
PATH=$GOPATH/bin:$PATH
PATH=$GOROOT/bin:$PATH
export PATH
export PYTHONPATH=/usr/local/Cellar/opencv/2.4.7.1/lib/python2.7/site-packages:$PYTHONPATH
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
BSTINPUTS=$BSTINPUTS:/usr/local/texlive/2015/texmf-dist/pbibtex/bst/
BSTINPUTS=$BSTINPUTS:/usr/local/texlive/2015/texmf-dist/bibtex/bst/base/
export BSTINPUTS
alias st="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias rm="rm -i"
alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

#for plenv
if which plenv > /dev/null; then eval "$(plenv init -)"; fi

#https://gist.github.com/mollifier/4964803
# シンプルな zshrc
# License : MIT
# http://mollifier.mit-license.org/
 
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
 
# vim:set ft=zsh :


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/taito-lee/Documents/Live2D/Live2D_SDK_OpenGL_2.0.06_3_jp/cocos2d-x-3.5/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/taito-lee/Documents/Live2D/Live2D_SDK_OpenGL_2.0.06_3_jp/cocos2d-x-3.5/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
