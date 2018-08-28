if has('gui_running')
  " set background=light
  set background=dark
else
  set background=dark
endif
let g:solarized_termcolors=256
set laststatus=2
" set dictionary+=$HOME/.mydict
" set dictionary+=/usr/share/dict/words
set isk+=- "把-分割的单词视为一个整体
" set mouse=nv
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
set autoindent
set cindent
set number                     " 行号
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:.
let g:vim_markdown_folding_disabled=1
let Tlist_Use_Right_Window=1 "方法列表放在屏幕的右侧
syntax on                      " 语法高亮
syntax enable

" 不去修复尾行，避免git diff出现No newline at end of file
set nofixendofline
" shiftwidth 程序自动缩进的空白宽度
" tabstop 定义一个tab等于多少个空格
" softtabstop，自己google太多了懒得写
" tabstop = ts, sw = shiftwidth, sts = softtabstop, tw = textwidth, et = expandtab
autocmd FileType ruby,yaml,eruby setlocal ts=2 sw=2 sts=2 tw=79 et
autocmd FileType htm,html,php setlocal ts=4 sw=4 sts=4 tw=79 et nolist
autocmd FileType go,ini,toml setlocal ts=4 sw=4 sts=4 tw=79 nolist

nnoremap < v<
nnoremap > v>
vnoremap < <gv
vnoremap > >gv

let mapleader = ","
map <F3> :%s/\s*$//g<CR>:noh<CR>   "移除行尾空格
map <F5> :GoRun<CR> "移除行尾空格
map <c-s-i> :GoImports<CR> "移除行尾空格
nmap <F2> :NERDTreeToggle <CR>
nmap ff :NERDTreeFind <CR>
nmap gb :Gblame <CR>
imap zsj <c-r>=strftime("%F %T")<CR>
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
imap zs /**<CR> *<CR>*/<CR>
" move lines up or down (command - S)
nmap <S-j> mz:m+<cr>`z
nmap <S-k> mz:m-2<cr>`z
vmap <S-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <S-k> :m'<-2<cr>`>my`<mzgv`yo`z


set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" " required!
Plugin 'gmarik/Vundle.vim'

" My Plugins here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'yaymukund/vim-rabl'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'eikenberry/acp'
Plugin 'airblade/vim-gitgutter'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-rails.git'
Plugin 'carlhuda/janus'
Plugin 'junegunn/vim-easy-align'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'cespare/vim-toml'

call vundle#end()
filetype plugin indent on     " required!

colorscheme solarized
set colorcolumn=80
" hi ColorColumn guibg=#832312
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..
