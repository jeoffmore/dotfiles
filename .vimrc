set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Sort Plugins by Function Please
Plugin 'VundleVim/Vundle.vim' "Vundle required

" Python
Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

" C
Plugin 'vim-scripts/c.vim'
" Java

" Docker

Plugin 'docker/docker'

" Git
Plugin 'tpope/vim-fugitive'

" Colour Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

"Autocommands
if has("autocmd")
"enable filetype detection
filetype plugin indent on
endif

set number
set title "No idea what this does
"if has('gui_running')
set background=dark
colorscheme solarized
" let g:solarized_termcolors=256 "Turns BG from blue to grey
"let g:solarized_termtrans=1
"else
"colorscheme zenburn
"endif

call togglebg#map("<F5>")
syntax enable
"set nocursorline
"set nocursorcolumn
set t_Co=256
"set laststatus=2
"hi StatusLine ctermbg=33
"set noshowmode
" Disables Arrow Keys
"" Normal Mode

nnoremap <up> <nop> 
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <down> <nop>
"" Insert Mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

set wrap
set textwidth=79
set colorcolumn=79
hi CursorLine cterm=NONE ctermbg=black
set cursorline
hi CursorColumn cterm=NONE ctermbg=black
set cursorcolumn
set formatoptions=qrn1 "NIWTD
set expandtab "et, spaces instead of tabs
set tabstop=4 "number of spaces in a tab. Default: 8

"Enable folding
set foldmethod=indent
set foldlevel=99

let g:SimpylFold_dicstring_preview=1

"au BufNewFile,BufRead *.py,*.pyc
"\ set tabstop=4
"\ set softtabstop=4
"\ set shiftwidth=4
"\ set textwidth=79
"\ set expandtab
"\ set autoindent
"\ set fileformat=unix
"\ let python_highlight_all=1
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.g match /\s\+$/
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

set clipboard=unnamed

"Shameless theft from still-dreaming-1's vimrc
""make searching easier:
set ignorecase 	"No idea what this does
set smartcase	"Or this
set hlsearch	"Or even this
set incsearch	"Especially not this

" Show Invisibles
set list "NIWTD
set listchars=tab:▸\ ,eol:¬,trail:.
nmap <silent> <leader>l :set list!<CR> "No idea what this does

"set transparency=3
"ctermbg=NONE
"ctermfg=NONE
" <vent> I do not understand the bullshit what would not allow syntax highlighting, but now, all is well with syntax enable after end of vundle </vent>
