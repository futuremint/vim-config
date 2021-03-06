" call pathogen#runtime_append_all_bundles()
execute pathogen#infect()
set ai  " Autoindent
set si  " Smartindent
set incsearch  " Incremental Search
set ignorecase " Ignore case when searching
set smartcase  " Ignore case when searching lowercase
set nohlsearch " Turn off the search highlight matching after search

" Setup solarized to have a dark background with normal contrast
" let g:solarized_termtrans=1 " Sets background to 'transparent' which uses terminal's background for bg in vim
" let g:solarized_bold=1
" let g:solarized_underline=1
" let g:solarized_italic=1
" let g:solarized_contrast="low"
" let g:solarized_visibility="low"
" set background=dark

colorscheme Tomorrow

" shortcut for inserting a timestamp
iab <expr> dts strftime("%x %X") " For windows you want just "%c"
" tabs
set tabstop=4
set expandtab
set shiftwidth=4
" Store swap files in a central directory
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
" Sets font
set guifont=Menlo\ 12
" Turns off the toolbar & scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=L
" Shows some fancy characters for tabs & newlines
set list
set listchars=tab:▸\ ,eol:¬
" Show relative line numbers in gutter & line number ruler at bottom
set ruler
set number
"fold settings
set foldmethod=indent
set nofoldenable
set foldlevel=1

" Status line
" "define custom highlight groups
set laststatus=2                                "always show status
set statusline=%{fugitive#statusline()}         "Git branch
set statusline+=\ %-.50F                        "full filename, limited to 50 chars
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'} "file encoding
set statusline+=,%{&ff}]                       "file format
set statusline+=%y                            "filetype
set statusline+=\ %h                            "help file flag
set statusline+=%m                              "modified flag
set statusline+=%r                              "read only flag
set statusline+=%=                              "left/right separator
set statusline+=%c,                             "cursor column
set statusline+=%l/%L                           "cursor line/total lines
set statusline+=\ %P                            "percent through fileP

" Make the rvm plugin switch when switching buffers
" au BufEnter * Rvm

" Syntax highlight rabl files as ruby (extension list can be comma-delimited
" list
au BufRead,BufNewFile *.rabl,*.json_builder,*.assetfile,Rakefile,Assetfile,Guardfile set ft=ruby
" Syntax highlight json files as javascript
au BufRead,BufNewFile *.json,*.ejs set ft=javascript
" Handlebars templates
au BufRead,BufNewFile *.handlebars,*.hbs set ft=handlebars
" Haskell
au Bufenter *.hs compiler ghc
filetype plugin on

" Window movement with C-h, C-j, C-k, C-l
nmap <c-h> <c-W>h
nmap <c-j> <c-W>j
nmap <c-k> <c-W>k
nmap <c-l> <c-W>l

" Map left and right arrow keys to change indentation of the current line/selected text
nmap <Left> <<
vmap <Left> <gv

nmap <Right> >>
vmap <Right> >gv

" TagBar config
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
