" Install vim-plug if it is not insatlled yet.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Apply plugins.
" (Reload .vimrc and :PlugInstall to install plugins. :PlugClean to uninstall.)
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tikhomirov/vim-glsl'

call plug#end()

" Set options.
set number

" Key mappings.
nmap <C-n> :NERDTreeToggle<CR>

" Replace TAB to spaces.
set expandtab
set shiftwidth=2

