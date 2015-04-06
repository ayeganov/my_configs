" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

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
set encoding=utf-8
let g:Powerline_symbols='fancy'
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

"NerdTree config options
map <C-n> :NERDTreeToggle<CR>

"Useful mappings
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
:nmap \c :set list!<CR>

" Whitespace highlighting
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen ctermfg=black guifg=black
highlight AllTabs ctermbg=darkred guibg=darkred

" The matchadd script below should work, but fails for whatever reason
"au InsertEnter * let w:m1=matchadd('ExtraWhitespace', '/\s\+\%#\@<!$/')
":let m = matchadd('AllTabs', '/\t/')

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd FileType make set noexpandtab

" Special character display
:set listchars=eol:»,tab:>-,trail:~,extends:>,precedes:<
:set list

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_user_command =
     \ ['.git', "cd %s && git ls-files . -co --exclude-standard && git submodule foreach -q \"git ls-files | sed 's|^|$path/|g'\""]

" map ctrl-b to list currently open buffers
"nmap <C-b> :buffers<CR>:buffer<Space>

" Pathogen initialization
execute pathogen#infect()
execute pathogen#helptags()
filetype on
"filetype plugin indent off

" Show trailing whitespace:
":match ExtraWhitespace /\s\+\%#\@<!$/
":2match AllTabs /\t/

set tabstop=4
set hlsearch
set expandtab


"###############Syntastic checker####################
let g:syntastic_cpp_compiler_options = '-std=c++0x'
"####################################################
"
"########################## VIM JEDI SETUP ###################
"let g:jedi#auto_initialization = 1
"let g:jedi#use_tabs_not_buffers = 1
"#############################################################


