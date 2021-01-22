set number "行番号を表示
set hls    "検索した文字をハイライト
set clipboard=unnamed "yankした文字列をクリップボードにコピー
set tabstop=2 "タブが変換される空白文字の数
set shiftwidth=2 "自動インデント時に入力する空白の数
set autoindent "改行時に自動でインデント

" =====Install dein=====
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/shoheikamiya/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/shoheikamiya/.cache/dein')
  call dein#begin('/Users/shoheikamiya/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/shoheikamiya/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

