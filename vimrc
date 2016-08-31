" no paste toggle
set nopaste

" set line number
set nu

syntax on

execute pathogen#infect()
filetype plugin indent on

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

if has('gui_running')
    set background=light
else
    set background=dark
endif

set ruler

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Show “invisible” characters
set lcs=tab:?\ ,trail:·,eol:¬,nbsp:_
set list

"Character limit
set textwidth=80

"To insert space characters whenever the tab key is pressed
set expandtab
"To control the number of space characters that will be inserted when the tab
"key is pressed, set the 'tabstop' option. For example, to insert 4 spaces for
"a tab
set tabstop=4
"To change the number of space characters inserted for indentation, use the
"'shiftwidth' option
set shiftwidth=4

au VimEnter * if &diff | execute 'windo set wrap' | endif

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

"Set mapleader
let mapleader = ","

"Fast reloading of the .vimrc
map <silent> <leader>s :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>e :e ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 

"Open NerdTree
map <silent> <leader>nt :NERDTree<cr>

"Open MiniBufExplorer
map <silent> <leader>me :MiniBufExplorer<cr>

set incsearch
set smartcase


" Window resizing mappings /*{{{*/
nnoremap <S-Up> :normal <c-r>=Resize('+')<CR><CR>
nnoremap <S-Down> :normal <c-r>=Resize('-')<CR><CR>
nnoremap <S-Left> :normal <c-r>=Resize('<')<CR><CR>
nnoremap <S-Right> :normal <c-r>=Resize('>')<CR><CR>
function! Resize(dir)
  let this = winnr()
  if '+' == a:dir || '-' == a:dir
    execute "normal \<c-w>k"
    let up = winnr()
    if up != this
      execute "normal \<c-w>j"
      let x = 'bottom'
    else
      let x = 'top'
    endif
  elseif '>' == a:dir || '<' == a:dir
    execute "normal \<c-w>h"
    let left = winnr()
    if left != this
      execute "normal \<c-w>l"
      let x = 'right'
    else
      let x = 'left'
    endif
  endif
  if ('+' == a:dir && 'bottom' == x) || ('-' == a:dir && 'top' == x)
    return "5\<c-v>\<c-w>+"
  elseif ('-' == a:dir && 'bottom' == x) || ('+' == a:dir && 'top' == x)
    return "5\<c-v>\<c-w>-"
  elseif ('<' == a:dir && 'left' == x) || ('>' == a:dir && 'right' == x)
    return "5\<c-v>\<c-w><"
  elseif ('>' == a:dir && 'left' == x) || ('<' == a:dir && 'right' == x)
    return "5\<c-v>\<c-w>>"
  else
    echo "oops. check your ~/.vimrc"
    return ""
  endif
endfunction


highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

inoremap jj <ESC>
