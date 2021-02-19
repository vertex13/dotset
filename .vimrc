" Install vim-plug if it is not insatlled yet.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Apply plugins.
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'rust-lang/rust.vim'

call plug#end()

" Set options.
set number

" Key mappings.
nmap <C-n> :NERDTreeToggle<CR>

" Replace TAB to spaces.
set expandtab
set shiftwidth=4

" Enable automatic running of :RustFmt when saving a buffer.
let g:rustfmt_autosave = 1

