set title "タイトルをセット
set number "行番号を表示
set hls    "検索した文字をハイライト
set clipboard=unnamed "yankした文字列をクリップボードにコピー
set expandtab
set tabstop=2
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
set scrolloff=8                " 上下8行の視界を確保
highlight ColorColumn ctermbg=0 guibg=lightgrey
"ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

