" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set number
set hlsearch
set ignorecase
syntax on
set tabstop=4
inoremap jj <ESC>
:map <F3> i{e<Esc>a}<Esc>
:map <F6> :!svn commit -m %<CR><Esc>
:map <F1> iecho "<pre>";print_r($array);echo "</pre>";<CR><Esc>
:map <F5> a<C-R>=strftime("%c")<CR><Esc>
:map <F2> i<CR><meta http-equiv="content-type" content="text/html; charset=UTF-8" /><CR><Esc>
:map <F4> i<CR>error_log(var_export($array,1),3,'/var/www/svnhejian/log.txt')."\r\n\r\n";<CR><Esc>
map <space> /
map <c-space> ?
map <S> shift
"set autoindent
nnoremap j jzz
nnoremap k kzz
abbr lunix linux
iabbr lunix linux
"使用vim里的<leader>
let mapleader=","
"按,ev打开配置文件
nmap <silent> <leader>ev :e $MYVIMRC<CR>
"按,sv重载配置文件
nmap <silent> <leader>sv :so $MYVIMRC<CR>
"按,m取消高亮搜索结果
nmap <silent> <leader>m :nohlsearch<CR>
"按,w保存文件
nmap <leader>w :w<CR>
"按,e在新tab打开文件
nmap <leader>e :tabe<Space>
"按,r在当前tab打开文件
nmap <leader>r :e<Space>
"按,p用python执行当前文件
nmap <leader>p :!python %<CR>
"nmap <leader>, :<Space>
set ruler
set cursorline
set title
hi CursorLine  cterm=NONE   ctermbg=green ctermfg=black
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=black
autocmd FileType python set tabstop=4 | set expandtab | set autoindent 
"set lines=40 columns=155
"总是显示状态栏
set laststatus=2  
