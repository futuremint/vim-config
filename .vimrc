call pathogen#runtime_append_all_bundles()
set ai		" Autoindent
set si 		" Smartindent
set incsearch 	" Incremental Search
set ignorecase	" Ignore case when searching
set smartcase	" Ignore case when searching lowercase

" Setup solarized to have a dark background with normal contrast
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
colorscheme solarized
set background=dark

iab <expr> dts strftime("%x %X") " For windows you want just "%c"
set tabstop=2
set expandtab
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
" Sets font
set guifont=DejaVu\ Sans\ Mono\ 9
" Turns off the toolbar
set guioptions-=T
" Shows some fancy characters for tabs & newlines
set list
set listchars=tab:▸\ ,eol:¬
" Show relative line numbers in gutter & line number ruler at bottom
set ruler
set relativenumber
" Turn off the search highlight matching after search
set nohlsearch

" Turn off both scrollbars
set guioptions-=L
set guioptions-=R

" Syntax highlight rabl files as ruby (extension list can be comma-delimited
" list
au BufRead,BufNewFile *.rabl,Guardfile set filetype=ruby
" Syntac highlight json files as javascript
au BufRead,BufNewFile *.json set filetype=javascript
