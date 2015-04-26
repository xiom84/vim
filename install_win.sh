cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/vimrcs/plugins.vim
' > ~/_vimrc

echo 'set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/vimrcs/basic.vim
try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.gvimrc

echo "VIM Installation complete. Do not forget to update plugin via :PluginInstall. Be happy ;)"
