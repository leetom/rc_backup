"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set ttimeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2zh()
"##### auto fcitx end ######

" from chunwei
set number
"输出命令显示
set showcmd
set ruler
set shiftwidth=4
set softtabstop =4
set tabstop=4
set expandtab
set smarttab
set ai
set si
"set to auto read when a file is changed from the outside
set autoread
"when vimrc is edited,reload it
":colo torte 
autocmd! bufwritepost vimrc source ~/.vimrc

"the commandbar height
"set cmdheight=2
"change buffer without saving
"set hid

set smartcase
set noswapfile

"make search act like search in mordern browsers
set incsearch
"set magic on, for regular expressions
set magic

"show matching bracets when text indicator is over them
set showmatch
"how many tenths of a second to blink
set mat=2

"turn backup off
set nobackup

"总是显示状态栏
set laststatus=2

"" set cursorline
"" highlight CursorLine guibg=black ctermbg=darkyellow

":map <C-v> :vsplit<cr><C-w>l
"分割窗口相关 
:map vs :vsplit<cr><C-w>l
:map vl <C-w>l
:map vh <C-w>h
:map vt :split<cr><C-w>k
:map vk <C-w>k
:map vj <C-w>j
"tabs相关" 
:map ten :tabnew <cr> 
:map tp :tabprevious <cr> 
:map tn :tabnext <cr> 
:map tc :tabclose<cr> 
:map tt :e!<cr>

" syntax on
syntax on

" vundle is used to manage plugins
set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 
 Bundle 'tpope/vim-rails.git'
 Bundle 'gregsexton/MatchTag.git' "match html tags
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'ZenCoding.vim'
 "Bundle 'mattn/zencoding-vim.git'
 " non github repos
 "Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
