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

" Writes to the unnamed register also writes to the * and + registers. This makes it easy to interact with the system clipboard
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

" Ctrol-Tab to switch between 2 last buffers
nmap <leader><Tab> :b#<cr>
nmap <leader>w :w<cr>

colorscheme solarized
set background=dark

call deoplete#enable()
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

set hidden
set autoread
set autowrite

" highlight the current line when the current mode is Insert
autocmd InsertEnter,InsertLeave * set cul!

" Default option for mouse in neovim is 'a' (enabled). Don't wanna that
set mouse=r

" Don't use Ex mode, use Q for formatting
map Q gq

set number

set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
" rename the word under the cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>
