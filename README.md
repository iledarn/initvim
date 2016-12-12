Installation
------------

::

 mkdir ~/.config/nvim
 cd ~
 git clone https://github.com/iledarn/initvim.git
 cd ~/.config/nvim
 curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
 sh ./installer.sh ~/.config/nvim/dein
 cd ~
 ln -s ~/initvim/init.vim ~/.config/nvim/init.vim
 ln -s ~/initvim/vimrc.plugins ~/.config/nvim/vimrc.plugins
