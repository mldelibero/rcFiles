"//-------------------------------------------------------------------
"set confirm

"set visualbell t_vb=    " turn off error beep/flash
"set novisualbell        " turn off visual bell

" Modify how tab works in vim
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop

set autowriteall        " automatically try to save files upon exit
set showcmd             " show partial commands in the BR

" Indentation based upon filetype
filetype plugin indent on

"//-------------------------------------------------------------------
"Searching Settings

set hlsearch            " highlight search
set incsearch           " do incremental searching
"""set showmatch           " jump to matches when entering regexp
"How do you do regex in a search?
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
"//-------------------------------------------------------------------
"Visual Settings
set nu     "display line numbers at left
set ruler               " set line and col number
syntax on               " turn on syntax highlighting
colorscheme desert      " change default color scheme
"//-------------------------------------------------------------------
set spell               " show spelling errors

set laststatus=1 "Shows file name in status bar if there are >=2 windows
set lbr "Break lines at a character in a word instead of the last character that fits on a screen
