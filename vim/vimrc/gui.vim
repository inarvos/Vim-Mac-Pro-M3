" vimrc/gui.vim

" MacVim-specific settings

if has("gui_running")
    " Set default font and font size
    set guifont=Inarvos\ Nerd\ Font:h28  " Adjust the font size as needed

    " Set initial window size
    set lines=20 columns=62  " Adjust the window size as needed

    " Set colorscheme for MacVim after VimEnter
    autocmd VimEnter * colorscheme tokyonight

    " Additional MacVim-specific settings can go here
endif
