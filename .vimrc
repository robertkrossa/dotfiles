set number
set shiftwidth=2
set tabstop=2
set expandtab
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" Ignore case when searching
set ignorecase 
" Always show current position
set ruler 
" Sets how many lines of history VIM has to remember
set history=500
imap jj <Esc>
noremap K i<CR><Esc>
syntax on
colorscheme desert
filetype on
filetype indent on
filetype plugin on
set rtp+=/usr/local/opt/fzf "fuzzy search
vnoremap y y:call system('pbcopy', @")<CR>
