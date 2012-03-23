call pathogen#runtime_append_all_bundles()
set ai  " Autoindent
set si  " Smartindent
set incsearch  " Incremental Search
set ignorecase " Ignore case when searching
set smartcase  " Ignore case when searching lowercase
set nohlsearch " Turn off the search highlight matching after search

" Setup solarized to have a dark background with normal contrast
let g:solarized_termtrans=1 " Sets background to 'transparent' which uses terminal's background for bg in vim
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast="high"
let g:solarized_visibility="low"
colorscheme solarized
set background=light

" shortcut for inserting a timestamp
iab <expr> dts strftime("%x %X") " For windows you want just "%c"
" tabs
set tabstop=2
set expandtab
" Store swap files in a central directory
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
set number
" Only show tab bar if there is more than one tab
set stal=1

" Turn off both scrollbars
set guioptions-=L
set guioptions-=R

" Syntax highlight rabl files as ruby (extension list can be comma-delimited
" list
au BufRead,BufNewFile *.rabl,*.json_builder,Rakefile,Assetfile,Guardfile set ft=ruby
" Syntax highlight json files as javascript
au BufRead,BufNewFile *.json,*.ejs set ft=javascript
" Handlebars templates
au BufRead,BufNewFile *.handlebars,*.hbs set ft=handlebars
" Haskell
au Bufenter *.hs compiler ghc
filetype plugin on
