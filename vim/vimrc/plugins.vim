" vimrc/plugins.vim

" PLUGINS

" Begin plugin section
call plug#begin('~/.vim/plugged')

" Spelling plugins
Plug 'kamykn/spelunker.vim'
Plug 'kana/vim-smartinput'

" File Explorer
Plug 'preservim/nerdtree'

" Window Maximization
Plug 'szw/vim-maximizer'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Color Highlighter
Plug 'ap/vim-css-color'

" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Commenting
Plug 'tpope/vim-commentary'

" Highlight Yanked Text
Plug 'machakann/vim-highlightedyank'

" Git Integration
Plug 'tpope/vim-fugitive'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'cocopon/iceberg.vim'
Plug 'folke/tokyonight.nvim'
Plug 'bluz71/vim-nightfly-colors'
Plug 'bluz71/vim-moonfly-colors'

" Grammar tools (commented out)
" Plug 'dpelle/vim-LanguageTool'
" Plug 'dense-analysis/ale'

call plug#end()
" End plugin section



" PLUGIN CONFIGURATIONS

" Set NERDTree width
let g:NERDTreeWinSize=20

" Enable vim-css-color
autocmd BufRead,BufNewFile *.css,*.scss,*.html,*.js,*.jsx,*.ts,*.tsx ColorToggle

" Enable vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Enable indentLine
let g:indentLine_char = '│'

" Enable vim-highlightedyank
let g:highlightedyank_highlight_duration = 200

" Set colorscheme after plugin installation
autocmd VimEnter * colorscheme moonfly
