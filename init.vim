set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.config/nvim/dein'))

source ~/.config/nvim/vimrc.plugins

call dein#end()

filetype plugin indent on

if dein#check_install()
  echo "installing plugins"
  call dein#install()
endif

" display a bar instead of a block in insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Writes to the unnamed register also writes to the * and + registers. This
" makes it easy to interact with the system clipboard
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Ctrol-Tab to switch between 2 last buffers
nmap <leader><Tab> :b#<cr>
nmap <leader>w :w<cr>
nmap <leader>bd :bd<cr>

colorscheme solarized
set background=dark

call deoplete#enable()
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
