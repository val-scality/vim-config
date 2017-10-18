execute pathogen#infect()

" Tabs
set shiftwidth=4  " Make an indent correspond to 4 spaces
set textwidth=0   " Disable line wrapping
set noexpandtab   " Do not replace tabs with spaces
set tabstop=4     " Display a tab as 4 spaces wide

set nosmartindent
set hidden  " allows us to change buffer even if current one is not saved

set nocompatible
set number
set mouse=a

set foldlevel=99

set colorcolumn=120  " display a vertical line at 120 characters

set linebreak  " do not split words over 2 lines

" Colors in the terminal will be the same as in GUI
set termguicolors

set background=dark

" Search for more auto-completion
"set path+=**

" Displays a menu when `:find <tab>`
set wildmenu

set complete=.,w,b,u,t,i
set scrolloff=5  " Make vim scroll when the cursor is 5 lines above or below the limit

" open folders with a tree-style
let g:netrw_banner=0
let g:netrw_liststyle=3

" The automcd is needed because without it the solarized theme will somehow remove the highlightings…
" Highlight starting spaces (instead of tabs) INCLUDING spaces after tabs
autocmd VimEnter,WinEnter * highlight StartingSpaces ctermbg=52 guibg=#073642
autocmd VimEnter,WinEnter * call matchadd('StartingSpaces', '^[ ]\+\|\(\t\+\)\@<= \+', 1)
" Highlight trailing spaces and tabs
autocmd VimEnter,WinEnter * highlight TrailingWhitespace ctermbg=red guibg=red
autocmd VimEnter,WinEnter * call matchadd('TrailingWhitespace', '\s\+$', 2)
" Highlight non-breaking spaces (useful for special keyboards like TypeMatrix which creates NBSP on [Shift]+[Space])
autocmd VimEnter,WinEnter * highlight NonBreakingSpaces ctermbg=red guibg=red
autocmd VimEnter,WinEnter * call matchadd('NonBreakingSpaces', ' ', 3)
" Highlight all tabs that are not indentation
autocmd VimEnter,WinEnter * highlight NonIndentationTabs ctermbg=red guibg=red
autocmd VimEnter,WinEnter * call matchadd('NonIndentationTabs', '\([^\t]\)\@<=\t\+', 4)

" Set spaces as indentation for Python files
autocmd FileType yaml,toml setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType jinja setlocal expandtab shiftwidth=4 tabstop=4
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
autocmd FileType python set colorcolumn=80
autocmd FileType python set foldmethod=indent
autocmd FileType sh setlocal expandtab shiftwidth=4 tabstop=4

let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']

" Display Syntastic errors with :lopen
let g:syntastic_always_populate_loc_list = 1

colorscheme solarized
