colorscheme peachpuff
set title "タイトルをセット
set number "行番号を表示
set hls    "検索した文字をハイライト
set clipboard=unnamed "yankした文字列をクリップボードにコピー
set expandtab
set tabstop=2
set shiftwidth=2 "自動インデント時に入力する空白の数
set autoindent "改行時に自動でインデント
set noswapfile "スワップファイルを作らない
set fenc=utf-8 "文字コード
set showcmd "入力中コマンドをステータスに表示
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:% "不可視文字を表示する
set ignorecase " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set showmatch "括弧の対応をハイライト
set colorcolumn=100 "ルーラーを表示
set scrolloff=8                " 上下8行の視界を確保
let g:netrw_banner=0 "hide netrw header information
let g:netrw_liststyle=3 "default tree view
highlight ColorColumn ctermbg=0 guibg=lightgrey
"ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ` ``<esc>i
inoremap ( ()<esc>i
inoremap { {}<esc>i
inoremap [ []<esc>i
inoremap < <><esc>i

let mapleader = "\<space>"
"=====fzf-preview keymap=====
nnoremap <silent> <Leader>p     :<C-u>CocCommand fzf-preview.ProjectFiles --resume --add-fzf-arg=--no-sort -i<CR>
nnoremap <silent> <Leader>b     :<C-u>CocCommand fzf-preview.Buffers<CR>
"require ripgrep https://github.com/BurntSushi/ripgrep
nnoremap <silent> <Leader>s     :<C-u>CocCommand fzf-preview.ProjectGrep --resume --add-fzf-arg=--no-sort -i<space>

"=====dein settings=====
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/s_kamiya/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/s_kamiya/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/s_kamiya/.cache/dein/repos/github.com/Shougo/dein.vim')

" Plugins
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('neoclide/coc.nvim', { 'rev': 'release', 'merged': 0 })

if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
