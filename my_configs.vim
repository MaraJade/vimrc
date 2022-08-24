"""""""""""""""""""""""""""""
" Personilized vim settings
"""""""""""""""""""""""""""""
" Display line numbers on the left
set number
" Remove left margin
set foldcolumn=0

" Enable system clipboard
set clipboard=unnamed

" Auto-enable indent guides
let g:indent_guides_enable_on_vim_startup = 1

colorscheme ir_black

""""""""""""""""""""""""
" colorscheme overrides
""""""""""""""""""""""""
hi Search ctermfg=green ctermbg=blue
hi Comment ctermfg=gray
hi LineNr ctermfg=gray
hi Ignore ctermfg=gray ctermbg=black cterm=NONE

"""""""""
" vim-go
"""""""""
" Height of quickfix window; default is variable based on output
" let g:go_list_height = 10
"
"let g:gofmt_command = "goimports"

map <leader>gb :GoBuild<cr>
map <leader>gt :GoTest<cr>
map <leader>gtc :GoTestCompile<cr>

"""""""""""
" NERDTree
"""""""""""
" Show hidden files automatically
let NERDTreeShowHidden=1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

""""""""""""""""""""""""""""""""
" vim-nerdtree-syntax-highlight
""""""""""""""""""""""""""""""""
" Highlight full name (not only icons)
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

""""""""""""""""""""""""""
" Python specific settings
""""""""""""""""""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Flag extra whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
