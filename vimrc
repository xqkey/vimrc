"-----------------------------------------------------------------------------"
" Copyright (C) 2005														  "
" Packet Engineering, Inc. All rights reserved.								  "
" 																		  	  "
" Modification History:													  	  "
" 2017/12/25 Created by Xu Qi			            						  "
"-----------------------------------------------------------------------------"

"------------------------------------"
" COMMON							 "
"------------------------------------"
"colors spacegray
"colors sky
"colors wolfpack
"colors evolution
"colors dracula
"colors gotham256
colors maui
filetype plugin indent on
syntax on
set ic
set nocompatible
set hls
set nu
set ai
set sw=4
set ts=4
set whichwrap+=[,]
set backspace=indent,eol,start
set showcmd
set ruler
set showmatch
set wildmenu
set incsearch
set laststatus=2
set si
set nospell
set wrap
set lbr
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
set hidden
set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " only in case you don't want a backup file while editing
set noundofile     " no undo files


"------------------------------------"
" HIGHLIGHT							 "
"------------------------------------"
set cursorline
"hi CursorLine cterm=NONE ctermbg=235 ctermfg=NONE
hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE
hi Search term=NONE ctermfg=0 ctermbg=033
hi Visual term=NONE ctermfg=0 ctermbg=033
hi VertSplit cterm=NONE ctermbg=235 ctermfg=NONE
hi Folded cterm=NONE ctermbg=235 ctermfg=NONE
hi FoldColumn cterm=NONE ctermbg=235 ctermfg=NONE
hi Comment cterm=bold


"------------------------------------"
" AUTOCMD							 "
"------------------------------------"
" Only do this part when compiled with support for autocommands
if has("autocmd")
" In text files, always limit the width of text to 78 characters
autocmd BufRead *.txt set tw=78
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif
endif


"------------------------------------"
" FILETYPE							 "
"------------------------------------"
autocmd filetype c map<silent><buffer> <f6> :w<cr>:make<cr>:cw<cr>
autocmd filetype cpp map<silent><buffer> <f6> :w<cr>:make<cr>:cw<cr>
autocmd filetype python map<buffer> <f5> :!clear<cr>:w<cr>:!python %<cr>
autocmd filetype lua map<buffer> <f5> :!clear<cr>:w<cr>:!lua %<cr>
autocmd filetype sh map<buffer> <f5> :!clear<cr>:w<cr>:!./%<cr>
autocmd filetype python imap<buffer> <f5> <esc>:!clear<cr>:w<cr>:!python %<cr>
autocmd filetype lua imap<buffer> <f5> <esc>:!clear<cr>:w<cr>:!lua %<cr>
autocmd filetype sh imap<buffer> <f5> <esc>:!clear<cr>:w<cr>:!./%<cr>


"------------------------------------"
" LARGEFILE							 "
"------------------------------------"
let g:LargeFile=10


"------------------------------------"
" SELFMAP							 "
"------------------------------------"
" o insert one line
"nnoremap    o    o<Esc>
"nnoremap    O    O<Esc>


"------------------------------------"
" AIRLINE							 "
"------------------------------------"
let g:airline#extensions#tagbar#enabled = 0
let g:airline_theme= 'jellybeans'
"let g:airline_theme= 'ouo'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
"let g:airline_section_b = '%{strftime("%Y/%m/%d %H:%M:%S")}'


"------------------------------------"
" ULTISNIPS							 "
"------------------------------------"
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"------------------------------------"
" RAINBOW							 "
"------------------------------------"
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}


"------------------------------------"
" GITGUTTER							 "
"------------------------------------"
set updatetime=600
let g:gitgutter_max_signs = 10000


"------------------------------------"
" SMOOTH-SCROLL						 "
"------------------------------------"
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 1)<CR>


"------------------------------------"
" NERDTREE							 "
"------------------------------------"
"autocmd vimenter * NERDTree
map <F3> :NERDTreeToggle<CR>


"------------------------------------"
" WHITESPACE						 "
"------------------------------------"
map <leader><space> :FixWhitespace<cr>


"------------------------------------"
" CTRLSF						 	 "
"------------------------------------"
nnoremap <Leader>f :CtrlSF<CR>


"------------------------------------"
" TAGBAR						 	 "
"------------------------------------"
autocmd FileType c,cpp nested :TagbarOpen
let g:tagbar_ctags_bin = '/home/xuqi/ctags-5.8/ctags'
let g:tagbar_width = 30
let g:tagbar_sort = 0


"------------------------------------"
" VIM-CPP-ENHANCED-HIGHLIGHT		 "
"------------------------------------"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1


"------------------------------------"
" COC                                "
"------------------------------------"
" 使用 tab 觸發帶有幾個字元的補全並導覽
" 使用指令 ':verbose imap <tab>' 確定 tab 沒有被映射到其他插件
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"------------------------------------"
" VIM-PLUGING						 "
"------------------------------------"
call plug#begin('~/.vim/bundle')
"Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Mizuchi/STL-Syntax'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
"Plug 'SirVer/ultisnips'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-smooth-scroll'
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'dyng/ctrlsf.vim'
Plug 'majutsushi/tagbar'
Plug 'neomake/neomake'
Plug 'sheerun/vim-polyglot'
Plug 'mg979/vim-visual-multi'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'itchyny/vim-cursorword'
call plug#end()
