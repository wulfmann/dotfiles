" LanguageClient {{{
"set runtimepath+=~/.vim-plugins/LanguageClient-neovim
"let g:LanguageClient_serverCommands = {
"	\ 'javascript': ['javascript-typescript-stdio']
"	\ }
"nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
"}}}
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'cf' : 1,
    \}
set guioptions=

let g:wr_filenamePrefix = "joe.snell"

" Pathogen {{{
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'gundo')
execute pathogen#infect()
" }}}

" Colors {{{
set t_Co=256
syntax enable
set background=dark
colorscheme codedark
let g:airline_theme='codedark'
" }}}

" Spaces & Tabs {{{
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
" let g:indent_guides_enable_on_vim_startup = 1
set cursorcolumn
set cursorline
" }}}

" UI {{{
set number
set showcmd
set mouse=a
" set list
set wildmenu
set showmatch " Highlight Matching"
set modelines=1
let g:netrw_winsize=25 " File Explorer Default Width
" set listchars=tab:\|\ 
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
filetype plugin indent on
:set number relativenumber
filetype plugin on
set omnifunc=syntaxcomplete#Complete

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
" }}}

" Folding {{{
set foldenable
set foldmethod=syntax
set foldlevelstart=10
nnoremap <space> za
" }}}

" Backup {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" Coldfusion {{{
let g:syntastic_cf_checkers=[]

au BufNewFile,BufRead *.cfm,*.cfc		setf cfml
"
" Coldfusion Filetypes
" Autoclose Tag
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.cfc,*.cfm,*.cfml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
" }}}

" Remaps {{{
inoremap jk <esc>
"Movement
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
:map <silent>  <C-n> :Lex<CR>
:map <D-n> :enew
" }}}

" Leader Remaps {{{
let mapleader=","
" }}}

" Splitting {{{
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" Searching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR> 
" Silver Searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <leader>a :ag
" }}}

" Misc {{{
" nnoremap uu :GundoToggle<CR>
" }}}

" Functions {{{
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
	return "\<tab>"
  else
	return "\<c-p>"
  endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" }}}

" vim:foldmethod=marker:foldlevel=0
