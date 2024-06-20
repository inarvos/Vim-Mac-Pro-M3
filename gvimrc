" Load the general settings and plugins
source ~/.vim/vimrc/plugins.vim

" MacVim-specific settings
if has("gui_running")
    " Set default font and font size
    set guifont=Inarvos\ Nerd\ Font:h28  " Adjust the font size as needed

    " Set initial window size
    set lines=19 columns=61  " Adjust the window size as needed

    " Set colorscheme for MacVim after VimEnter
    autocmd VimEnter * colorscheme nightfly

    " Quit MacVim completely when the last window is closed
    autocmd VimLeavePre * if winnr('$') == 1 && tabpagenr('$') == 1 | call system("osascript -e 'quit app \"MacVim\"'") | endif
endif
