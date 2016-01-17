cd ~/vim

echo 'set runtimepath+=~/vim
source ~/vim/vimrcs/plugins.vim
' > ~/.vimrc

echo 'set runtimepath+=~/vim
source ~/vim/vimrcs/basic.vim
try
source ~/vim/vimrcs/pluginconfiguration.vim
source ~/vim/vimrcs/functions.vim
catch
endtry' > ~/.gvimrc

echo "VIM Installation complete. Do not forget to update plugin via :PlugInstall. Be happy ;)"
