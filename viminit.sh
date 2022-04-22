#!/bin/bash

mkdir -p ~/.vim/after/ftplugin
echo 'setlocal colorcolumn=72' > ~/.vim/after/ftplugin/gitcommit.vim

VIMPACK=~/.vim/pack
PLUGINS=$VIMPACK/plugins/start
THEMES=$VIMPACK/themes/start

git clone --depth 1 https://github.com/dense-analysis/ale.git $PLUGINS/ale
git clone --depth 1 https://github.com/editorconfig/editorconfig-vim.git $PLUGINS/editorconfig
git clone --depth 1 https://github.com/jamessan/vim-gnupg.git $PLUGINS/vimgpg
git clone --depth 1 https://github.com/mhinz/vim-signify.git $PLUGINS/signify
# git clone --depth 1 https://github.com/neoclide/coc.nvim.git $PLUGINS/coc
git clone --depth 1 https://github.com/tpope/vim-commentary.git $PLUGINS/commentary
git clone --depth 1 https://github.com/tpope/vim-surround.git $PLUGINS/surround
git clone --depth 1 https://github.com/vim-airline/vim-airline $PLUGINS/airline
git clone --depth 1 https://github.com/vim-test/vim-test.git $PLUGINS/vimtest
git clone --depth 1 https://github.com/vimwiki/vimwiki.git $PLUGINS/vimwiki

git clone --depth 1 https://github.com/dracula/vim.git $THEMES/dracula

vim -c 'helptags ALL' -c quit

