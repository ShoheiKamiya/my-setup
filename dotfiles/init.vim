set title "タイトルをセット
set number "行番号を表示
set hls    "検索した文字をハイライト
set clipboard=unnamed "yankした文字列をクリップボードにコピー
set tabstop=2 "タブが変換される空白文字の数
set shiftwidth=2 "自動インデント時に入力する空白の数
set autoindent "改行時に自動でインデント
set cursorline "現在の行を強調表示
set noswapfile "スワップファイルを作らない
set fenc=utf-8 "文字コード
set showcmd "入力中コマンドをステータスに表示
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:% "不可視文字を表示する
set ignorecase " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set showmatch "括弧の対応をハイライト
set colorcolumn=100 "ルーラーを表示
highlight ColorColumn ctermbg=0 guibg=lightgrey
"ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

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

