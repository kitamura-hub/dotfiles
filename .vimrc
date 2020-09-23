" -------------------------
" 基本設定
" -------------------------
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

" -------------------------
" 表示設定
" -------------------------
" コメントの色を水色
hi Comment ctermfg=3
" 行番号
set number
" 現在の行を強調表示
set cursorline
" 行末のスペースを可視化
set listchars=tab:^\ ,trail:~
" コマンドラインの補完
set wildmode=list:longest
" コマンドラインの履歴を100件保存
set history=100
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" インデントはスマートインデント
set smartindent
" インデント幅
set shiftwidth=2
" タブキー押下時に挿入される文字幅
set softtabstop=2
" 対応する括弧を強調表示
set showmatch
" シンタックスハイライト
syntax on

" -------------------------
" 検索
" -------------------------
" 検索するときに大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視して検索
set smartcase
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch
" 検索結果をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" -------------------------
" key-maping 
" -------------------------
" control + tでNERDTreeを起動
nnoremap <silent><C-t> :NERDTreeToggle<CR>

" -------------------------
" プラグインセットアップ 
" -------------------------
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

filetype plugin indent on

