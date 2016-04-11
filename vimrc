" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc
" To get the full range of colors in the terminal window, vim only
set t_Co=256

augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
  au BufNewFile,BufRead *.ino setfiletype cpp
  au BufNewFile,BufRead *.jinja2 setfiletype html
augroup end
set ruler
" Name of the file that I am editing
" Format of the file that I am editing (DOS, Unix)
" Filetype as recognized by Vim for the current file
" ASCII and hex value of the character under the cursor
" Position in the document as row and column number
" Length of the file (line count)
" ===== For more info on the flags type :help statusline =====
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set mouse-=a
set number
set smartcase
set ignorecase
set autoread
set autoindent
set shiftwidth=4

" Powerline config options
set nocompatible
" set encoding=utf-8   "vim only


" Special character display
:set listchars=eol:»,tab:>-,trail:~,extends:>,precedes:<
:set list

"Useful mappings
" Show/hide line numbers
:nmap \l :setlocal number!<CR>
" Enable/disable paste mode (no auto tabs)
:nmap \o :set paste!<CR>
" Show/hide special characters(tabs, newlines, spaces etc)
:nmap \c :set list!<CR>
" Turn all buffers into tabs
:nmap \t :tab sball<CR>

" Whitespace highlighting
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen ctermfg=black guifg=black
highlight AllTabs ctermbg=darkred guibg=darkred

autocmd FileType make set noexpandtab

" map ctrl-b to list currently open buffers
"nmap <C-b> :buffers<CR>:buffer<Space>

filetype on

set tabstop=4
set hlsearch
set expandtab


"################ PLUGINS #########################
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
call plug#end()

" Ctrl-P config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command =
     \ ['.git', "cd %s && git ls-files . -co --exclude-standard && git submodule foreach -q \"git ls-files | sed 's|^|$path/|g'\""]

" Airline config
let g:airline_powerline_fonts = 1

" NerdTree config options
map <C-n> :NERDTreeToggle<CR>
