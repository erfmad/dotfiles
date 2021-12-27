    set nocompatible 		     
    filetype off                     

    call plug#begin('~/.config/nvim/plugged')

    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mileszs/ack.vim'
    call plug#end()

    colorscheme gruvbox  

    nnoremap <C-n> :NERDTree<CR>

    " coc config
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
    



" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif




" mouse
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

" 


" turn on line numbering
set number
set relativenumber

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8



" sane editing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=80
set background=dark
set expandtab



" always show the status bar
set laststatus=2


" Erf adds this" 
set cursorline
set hlsearch
set wildmenu
set autoindent
set smartindent
set title
set ttyfast
syntax on
set nowrap
set smartindent



""""echo "set tags=tags" >> ~/.config/nvim/init.vim""" 



set tags=~/.tags/torchtags
