colorscheme peachpuff
autocmd ColorScheme * highlight ColorColumn ctermbg=Black
autocmd ColorScheme * highlight Folded ctermbg=Black
set title "タイトルをセット
set number "行番号を表示
set hls    "検索した文字をハイライト
set modifiable
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
set foldmethod=indent
set foldlevel=0
let g:netrw_banner=0 "hide netrw header information
let g:netrw_liststyle=3 "default tree view
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
nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]
"=====fzf-preview keymap=====
nnoremap <silent> <Leader>p     :<C-u>CocCommand fzf-preview.ProjectFiles -i<CR>
nnoremap <silent> <Leader>b     :<C-u>CocCommand fzf-preview.Buffers<CR>
"require ripgrep https://github.com/BurntSushi/ripgrep
nnoremap <silent> <Leader>s     :<C-u>CocCommand fzf-preview.ProjectGrep --resume -i<space>

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
call dein#add('Shougo/defx.nvim')

if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"=====defx settings=====
nnoremap <silent><Leader>f :<C-u>Defx<CR>

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('open')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('preview')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_tree', 'toggle')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction
