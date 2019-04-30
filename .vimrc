" @smu095's .vimrc configuration for Python development.
" Last changed: 30.04.19.

" Required
set nocompatible
filetype off


" PLUGINS ----------------------------------------------------------------------

" Setup
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'nvie/vim-flake8'
Plugin 'vim-syntastic/syntastic'
Plugin 'cjrh/vim-conda'

" Required
call vundle#end()


" BASIC SETTINGS ---------------------------------------------------------------

" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omnicompletion and other useful settings.
filetype plugin indent on

" Full Python syntax highlighting.
let python_highlight_all=1

" % command jumps to matching HTML tags, if/else/endif, etc.
runtime macros/matchit.vim

" Whitespace warnings 
highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /\s\+$/

" Indentation
set autoindent                  " Minimal autoindentation for any filetype.
set expandtab                   " Convert tab to spaces.
set shiftwidth=4                " Determines whitespace for indentation in
                                " Normal mode.
set softtabstop=4               " <Backspace> removes 4 spaces of indentation.
set tabstop=4                   " <Tab> inserts 4 spaces.

" Various settings
set backspace=indent,eol,start  " Proper backspace behaviour.
set confirm                     " Show confirmation dialogue when closing
                                " unsaved file.
set cursorline                  " Highlight screen line of cursor.
set encoding=utf-8              " Enable UTF-8 encoding.
set fileformat=unix             " Use UNIX (\n) line endings.
set hidden                      " Possibility to have more than one
                                " unsaved buffer.
set incsearch                   " Incremental search (i.e. search as typed), 
                                " hit <CR> to stop.
set number                      " Enable line numbers.
set ruler                       " Show current line number at bottom right
                                " of the screen.
set relativenumber              " Show line number relative to current line.
                                " below current window.
set splitbelow                  " New horisontal split places new window
                                " below current.
set splitright                  " New vertical split places new window
                                " to the right of current.
set textwidth=79                " Number of characters per line (PEP-8).
set title                       " Window title shows current file.
set wildmenu                    " Command-line completion, use <Tab> to move
                                " around and <CR> to validate.


" KEY MAPPINGS ----------------------------------------------------------------

" Easy window navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

" Indenting in Normal and Visual  mode
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Yank until end of line
nnoremap Y y$

" Save and run script
nnoremap <F5> <Esc>:w<CR>:!clear;python %<CR>
inoremap <F5> <Esc>:w<CR>:!clear;python %<CR>

" Code folding with space bar
nnoremap <space> za  

" Open NERDTree 
nnoremap <C-n> :NERDTreeToggle<CR>

" VISUALS ---------------------------------------------------------------------

" Code folding
set foldmethod=indent           " Code folding on indents.
set foldlevel=99                " Setting code folding depth.

" Colour theme (Solarized)
syntax enable
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized


" PLUGIN SETTINGS -------------------------------------------------------------

" Status bar
let g:airline_section_error=''
let g:airline_section_warning=''
let g:airline_solarized_bg='dark'
