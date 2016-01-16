cd ~/vim

echo 'set runtimepath+=~/vim
source ~/vim/vimrcs/plugins.vim
' > ~/.vimrc

echo 'set runtimepath+=~/vim
source ~/vim/vimrcs/basic.vim
try
source ~/vim/my_configs.vim
catch
endtry' > ~/.gvimrc

echo "VIM Installation complete. Do not forget to update plugin via :PlugInstall. Be happy ;)"
