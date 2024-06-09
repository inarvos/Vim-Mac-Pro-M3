" Load the general settings and plugins
source ~/.vim/vimrc/plugins.vim

" MacVim-specific settings
if has("gui_running")
    " Set default font and font size
    set guifont=Inarvos\ Nerd\ Font:h28  " Adjust the font size as needed

    " Set initial window size
    set lines=19 columns=61  " Adjust the window size as needed

    " Additional MacVim-specific settings can go here
endif
