" vimrc/keymaps.vim

" KEYMAPS

" Set leader key to space
let mapleader = " "

" Keymaps

" Remap j and k to move by visual lines instead of logical lines
nnoremap <down> gj
nnoremap <up> gk
vnoremap <down> gj
vnoremap <up> gk
inoremap <down> <C-o>gj
inoremap <up> <C-o>gk

" Delete single character without copying into register
nnoremap x "_x

" Quit Vim
nnoremap q :q<CR>
nnoremap <leader>qa :qa<CR>

" Save
nnoremap w :w<CR>

" Map Cmd+v to paste the yanked text
nnoremap <D-v> "+p
vnoremap <D-v> "+p
inoremap <D-v> <C-r>+

" Open terminal
nnoremap <leader>tr :terminal<CR>
" Exit insert mode in terminal
tnoremap <ESC> <C-\><C-n>

" Clear search highlights
nnoremap <leader>nh :nohl<CR>

" Increment/decrement numbers
nnoremap + <C-a>
nnoremap - <C-x>

" Map dw to delete the current word under the cursor
nnoremap dw :call DeleteCurrentWord()<CR>

" Select all text
nnoremap <C-a> gg<S-v>G



" Window management

"Split window horizontally
nnoremap ss :split<Return>
"Split window vertically
nnoremap sv :vsplit<Return><C-w>w
"Make split windows equal width & height
nnoremap se <C-w>=
"Close current split window
nnoremap sx :close<CR>
"Move between windows
nnoremap <Space> <C-w>w

" Move between windows using leader key and arrow keys
nnoremap <leader><up> <C-w><up>
nnoremap <leader><down> <C-w><down>
nnoremap <leader><left> <C-w><left>
nnoremap <leader><right> <C-w><right>



" Tabs management

"Edit new tab
nnoremap te :tabedit<Return>
"Open new tab
nnoremap to :tabnew<CR>
"Close current tab
nnoremap tc :tabclose<CR>
"Close current tab
nnoremap tx :tabclose<CR>
"Go to next tab
nnoremap tn :tabn<CR>
"Go to next tab
nnoremap <tab> :tabn<CR>
"Go to previous tab
nnoremap tp :tabp<CR>



"---------------------
"- Plugin Keybinds
"---------------------

" Keymaps for NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>

" Keymaps for vim-maximizer
nnoremap <leader>sm :MaximizerToggle<CR>

" Keymaps for fzf
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fs :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fh :Helptags<CR>

" Keymaps for vim-commentary (same as Comment.nvim)
" gcc and gc in visual mode are the default keybindings

" Keymaps for vim-fugitive
" :G and other commands are sufficient for basic git operations



" Function to delete the current word under the cursor
function! DeleteCurrentWord()
  normal! h
  normal! e
  normal! v
  normal! b
  normal! d
endfunction
