"""""""""""""""""""""""""""""
" Personilized vim settings
"""""""""""""""""""""""""""""
colorscheme ir_black

" Display line numbers on the left
set number
" Remove left margin
set foldcolumn=0
" Set marker at line limit
set colorcolumn=79
" Enable system clipboard
set clipboard=unnamed

""""""""""""""""""""""""
" colorscheme overrides
""""""""""""""""""""""""
hi Search ctermfg=green ctermbg=blue
hi Comment ctermfg=gray
hi LineNr ctermfg=gray
hi Ignore ctermfg=gray ctermbg=black cterm=NONE

" 237-242: very dark gray
hi IndentGuidesOdd ctermbg=237
hi IndentGuidesEven ctermbg=240

""""""""""""""""
" Indent Guides
""""""""""""""""
" Auto-enable
let g:indent_guides_enable_on_vim_startup = 1
" Don't automatically select colors
let g:indent_guides_auto_colors = 0

let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

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


""""""""""""""""""""
" Filetype Settings
""""""""""""""""""""

"""""
" Go
"""""
au FileType go map <leader>gb :GoBuild<cr>
au FileType go map <leader>gt :GoTest<cr>
au FileType go map <leader>gc :GoTestCompile<cr>


"""""""""
" Python 
"""""""""
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
