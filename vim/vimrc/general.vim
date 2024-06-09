" vimrc/general.vim

" GENERAL SETTINGS

" Basic Settings
syntax on                 " Enable syntax highlighting
set number                " Show line numbers
set title                 " Set terminal title

" Display and Wrapping Settings
set wrap                  " Enable line wrapping
set nolinebreak           " Disable line break within a word
set display+=lastline     " Ensure the last line is always displayed

" Cursor
set cursorline            " Highlight the current line
set whichwrap+=<,>,h,l    " Allow cursor to move to the next line with the <Right> arrow key at the end of the line
set virtualedit=onemore   " Allow cursor to move one character past the end of the line
" Set cursor shape and style for different modes
"set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    " Explanation
    " n-v-c:block      - Normal, Visual, and Command-line mode: block cursor
    " i-ci-ve:ver25    - Insert and Replace mode: vertical bar cursor (25% width)
    " r-cr:hor20       - Replace mode: horizontal bar cursor (20% height)
    " o:hor50          - Operator-pending mode: horizontal bar cursor (50% height)

" Search Settings
set hlsearch              " Highlight search results
set ignorecase            " Ignore case in search patterns
set smartcase             " Override 'ignorecase' if search pattern contains uppercase letters

" Indentation Settings
set tabstop=4             " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4          " Number of spaces to use for each step of (auto)indent
set expandtab             " Convert tabs to spaces
set autoindent            " Copy indent from current line when starting a new line
set smartindent           " Smart autoindenting when starting a new line
set breakindent           " Wrap indent to match line start

" Clipboard and Mouse Settings
set clipboard=unnamed     " Use the system clipboard for all yank, delete, change and put operations
set mouse=a               " Enable mouse support in all modes

" Encoding Settings
set encoding=utf-8        " Set internal character encoding to UTF-8
set fileencoding=utf-8    " Set file encoding to UTF-8

" Backup and Undo Settings
set nobackup              " Do not keep a backup file

" Command Line and Status Line Settings
set showcmd               " Display incomplete commands
set cmdheight=1           " Height of the command line
set laststatus=2          " Always display the status line

" Miscellaneous Settings
set termguicolors         " Enable 24-bit RGB colors
set background=dark       " Set background color to dark
set signcolumn=yes        " Always show the sign column
set shortmess-=I          " Do not show the intro message on startup

" Path and Wildignore Settings
set path+=**              " Search files in subdirectories
set wildignore+=*/node_modules/*  " Ignore files in node_modules directories

" Window Splitting Settings
set splitright            " Split windows to the right
set splitbelow            " Split windows below

" Backspace Settings
set backspace=start,eol,indent  " Allow backspacing over everything in insert mode

" Spelling Settings
set spell                 " Show spelling errors

" Autocommands
" Highlight yanked text for 200ms using the 'Visual' highlight group
augroup highlight_yank
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END

" Turn off paste mode when leaving insert mode
autocmd InsertLeave * set nopaste



" Spelling

" Specify the spell file location for custom words
" You can create this file manually or use the zg command to add words to it
set spellfile=~/.vim/spell/personal.en.utf-8.add

" Set the spell languages
set spelllang=en

" Set completeopt to have a better completion experience
set completeopt=menu,menuone,noselect

" Custom function for spelling completion
function! SpellComplete(findstart, base)
  if a:findstart
    " Locate the start of the current word
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\k'
      let start -= 1
    endwhile
    return start
  else
    " Return the list of spelling suggestions
    return spellsuggest(a:base, 10)
  endif
endfunction

" Set completefunc to use the custom SpellComplete function
set completefunc=SpellComplete

" Automatically trigger completion after inserting a character
autocmd TextChangedI * if pumvisible() == 0 | silent! call feedkeys("\<C-X>\<C-U>") | endif

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
