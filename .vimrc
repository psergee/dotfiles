set nocompatible

syntax enable

set tabstop=4

set softtabstop=4

" tabs are spaces
set expandtab

set number

set wildmenu

set showmatch " highlight match brackets

" search options
set incsearch " search as characters are entered
set hlsearch

" folding options
set foldenable
set foldlevelstart=10
set foldmethod=indent

set nowrap
set showmode " always show what mode we're currently editing in
set shiftwidth=4 " number of spaces to use for autoindenting

set autoindent

set listchars=tab:>-,trail:.,extends:#,nbsp:.

set termencoding=utf-8
set encoding=utf-8

set hidden

set history=1000 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo

set nobackup
set noswapfile

set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep

set showcmd " show (partial) command in the last line of the screen
set nomodeline " disable mode lines (security measure)
set cursorline " underline the current line, for quick orientation

filetype on

" encodings check order
set fileencodings=ucs-bom,utf-8,windows-1251,koi8-r
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set background=dark
set list
set colorcolumn=130
set ffs=unix,dos

set wildignore=.svn/**,.git/**,*.o,*.parts,*.zip,*.gz,*.pdf

if has('win32')
    set guifont=Consolas:h10
    set lines=50 columns=150
    set backspace=indent,eol,start
    behave mswin
    set keymodel-=stopsel
endif
