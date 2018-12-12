set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'davidhalter/jedi-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'francoiscabrol/ranger.vim'
" Plugin 'vim-scripts/Conque-GDB' " Conque-GDB doesn't work well with neovim
Plugin 'sakhnik/nvim-gdb'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'majutsushi/tagbar'
" Plugin 'vim-scripts/cscope.vim'

" Plugin 'rdnetto/YCM-Generator'
" Plugin 'jeaye/color_coded' " neovim isn't supported
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:python3_host_prog = '/usr/bin/python3' " pynvim plugin; YCM requires python support

" easier terminal mode exit
tnoremap <Esc> <C-\><C-n>

" horizontal and vertical splits w/ terminal
command! -nargs=* T split | terminal <args> 
command! -nargs=* VT vsplit | terminal <args>

" save folds across vim sessions
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

set shell=bash
set list
set number
set relativenumber

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>jd :YcmCompleter GoToImprecise<CR>

set splitbelow splitright
set tabstop=2 " size of tab
set expandtab " tabs to spaces
set shiftwidth=2 " number of spaces to insert for a tab

""""""""""""""
" Clang format
    let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

    " map to <Leader>cf in C++ code
    autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
    autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
    " if you install vim-operator-user
    "autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
    " Toggle auto formatting:
    nmap <Leader>C :ClangFormatAutoToggle<CR>

""""""""""""""
" neovim gdb
"    let g:nvimgdb_config_override = {
"      \ 'key_next': 'n',
"      \ 'key_step': 's',
"      \ 'key_finish': 'f',
"      \ 'key_continue': 'c',
"      \ 'key_until': 'u',
"      \ 'key_breakpoint': 'b',
"      \ }
"


""""""""""""""
" cscope
" nnoremap <leader>ca :call cscope#findInteractive(expand('<cword>'))<CR>
" nnoremap <leader>cl :call ToggleLocationList()<CR>

"""""""""""""
" YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 1
