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
