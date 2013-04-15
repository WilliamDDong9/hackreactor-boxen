class people::ndhoule::applications-vim {

  notify { 'class people::ndhoule::applications-vim declared': }

  vim::bundle { 'Bogdanp/rbrepl.vim.git': }
  vim::bundle { 'Lokaltog/vim-powerline.git': }
  vim::bundle { 'Raimondi/delimitMate.git': }
  vim::bundle { 'Valloric/YouCompleteMe.git': }
  vim::bundle { 'digitaltoad/vim-jade.git': }
  vim::bundle { 'epeli/slimux.git': }
  vim::bundle { 'godlygeek/tabular': }
  vim::bundle { 'guns/vim-clojure-static.git': }
  vim::bundle { 'hallison/vim-markdown': }
  vim::bundle { 'heavenshell/vim-jsdoc.git': }
  vim::bundle { 'kchmck/vim-coffee-script.git': }
  vim::bundle { 'kien/ctrlp.vim': }
  vim::bundle { 'kien/rainbow_parentheses.vim.git': }
  vim::bundle { 'mattn/zencoding-vim.git': }
  vim::bundle { 'mileszs/ack.vim.git': }
  vim::bundle { 'ndhoule/vim-ragtag.git': }
  vim::bundle { 'scrooloose/nerdcommenter': }
  vim::bundle { 'scrooloose/nerdtree': }
  vim::bundle { 'scrooloose/syntastic.git': }
  vim::bundle { 'slim-template/vim-slim.git': }
  vim::bundle { 'terryma/vim-multiple-cursors.git': }
  vim::bundle { 'tpope/vim-fugitive': }
  vim::bundle { 'tpope/vim-haml.git': }
  vim::bundle { 'tpope/vim-repeat.git': }
  vim::bundle { 'tpope/vim-surround': }
  vim::bundle { 'vim-ruby/vim-ruby': }
  vim::bundle { 'vim-scripts/Rename.git': }
  vim::bundle { 'vim-scripts/YankRing.vim.git': }
  vim::bundle { 'vim-scripts/bufexplorer.zip.git': }
  vim::bundle { 'vim-scripts/bufkill.vim.git': }
  vim::bundle { 'vim-scripts/fakeclip.git': }
  vim::bundle { 'vim-scripts/guicolorscheme.vim': }
  vim::bundle { 'vim-scripts/jQuery.git': }
  vim::bundle { 'vim-scripts/scratch.vim.git': }

  ## Snipmate Plugins
  vim::bundle { 'garbas/vim-snipmate.git': }
  vim::bundle { 'MarcWeber/vim-addon-mw-utils.git': }
  vim::bundle { 'tomtom/tlib_vim.git': }
  vim::bundle { 'honza/vim-snippets.git': }

  ## Themes
  vim::bundle { 'altercation/vim-colors-solarized.git': }
  vim::bundle { 'tomasr/molokai.git': }
  vim::bundle { 'trapd00r/neverland-vim-theme.git': }

}
