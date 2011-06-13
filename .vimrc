call pathogen#runtime_append_all_bundles()
set ai		" Autoindent
set si 		" Smartindent
set incsearch 	" Incremental Search
set ignorecase	" Ignore case when searching
set smartcase	" Ignore case when searching lowercase

let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
colorscheme solarized
set background=dark

iab <expr> dts strftime("%x %X") " For windows you want just "%c"
set tabstop=2
set expandtab
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

set guifont=DejaVu\ Sans\ Mono\ 9
