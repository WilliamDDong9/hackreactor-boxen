class people::ndhoule::applications {

  notify { 'class people::ndhoule::applications declared': }

  # Boxen Packages
  include java
  include xquartz

  include clojure
  include csshx
  include ctags
  include hub
  include mongodb
  include mysql
  include phantomjs
  include postgresql
  include python
  include tmux
  include wget
  include zsh

  include alfred
  include appcleaner
  include chrome
  include chrome::canary
  include clipmenu
  include colloquy
  include cyberduck
  include firefox
  include fluid
  include flux
  include iterm2::dev
  include macvim
  include mou
  include pckeyboardhack
  include rdio
  include sequel_pro
  include skype
  include slate
  include sublime_text_2
  include transmission
  include tunnelblick
  include vim
  include virtualbox
  include vlc
  include vmware_fusion

  # Vim Packages
  vim::bundle { 'Bogdanp/rbrepl.vim.git': }
  vim::bundle { 'digitaltoad/vim-jade.git': }
  vim::bundle { 'epeli/slimux.git': }
  vim::bundle { 'godlygeek/tabular': }
  vim::bundle { 'guns/vim-clojure-static.git': }
  vim::bundle { 'hallison/vim-markdown': }
  vim::bundle { 'heavenshell/vim-jsdoc.git': }
  vim::bundle { 'kchmck/vim-coffee-script.git': }
  vim::bundle { 'kien/ctrlp.vim': }
  vim::bundle { 'kien/rainbow_parentheses.vim.git': }
  vim::bundle { 'Lokaltog/vim-powerline.git': }
  vim::bundle { 'mattn/zencoding-vim.git': }
  vim::bundle { 'mileszs/ack.vim.git': }
  vim::bundle { 'ndhoule/vim-ragtag.git': }
  vim::bundle { 'scrooloose/nerdcommenter': }
  vim::bundle { 'scrooloose/nerdtree': }
  vim::bundle { 'scrooloose/syntastic.git': }
  vim::bundle { 'slim-template/vim-slim.git': }
  vim::bundle { 'Townk/vim-autoclose.git': }
  vim::bundle { 'tpope/vim-fugitive': }
  vim::bundle { 'tpope/vim-haml.git': }
  vim::bundle { 'tpope/vim-repeat.git': }
  vim::bundle { 'tpope/vim-surround': }
  vim::bundle { 'Valloric/YouCompleteMe.git': }
  vim::bundle { 'vim-ruby/vim-ruby': }
  vim::bundle { 'vim-scripts/bufexplorer.zip.git': }
  vim::bundle { 'vim-scripts/bufkill.vim.git': }
  vim::bundle { 'vim-scripts/fakeclip.git': }
  vim::bundle { 'vim-scripts/guicolorscheme.vim': }
  vim::bundle { 'vim-scripts/jQuery.git': }
  vim::bundle { 'vim-scripts/Rename.git': }
  vim::bundle { 'vim-scripts/scratch.vim.git': }
  vim::bundle { 'vim-scripts/YankRing.vim.git': }
  ## Snipmate Plugins
  vim::bundle { 'garbas/vim-snipmate.git': }
  vim::bundle { 'MarcWeber/vim-addon-mw-utils.git': }
  vim::bundle { 'tomtom/tlib_vim.git': }
  vim::bundle { 'honza/vim-snippets.git': }
  ## Themes
  vim::bundle { 'altercation/vim-colors-solarized.git': }
  vim::bundle { 'tomasr/molokai.git': }


  # Homebrew Packages
  package {
    [
      'coreutils',
      'cowsay',
      'gnu-sed',
      'heroku-toolbelt',
      'nailgun',
      'readline',
      'reattach-to-user-namespace',
      'rlwrap',
      'selenium-server-standalone',
      'ssh-copy-id',
      'sshfs',
      'tree',
      'vimpager'
    ]:
  }

  # NPM Packages
  nodejs::module {
    'chai':
      node_version => 'v0.10';

    'coffee-script':
      node_version => 'v0.10';

    'coffeelint':
      node_version => 'v0.10';

    'docco':
      node_version => 'v0.10';

    'express':
      node_version => 'v0.10';

    'grunt-cli':
      node_version => 'v0.10';

    'grunt-init':
      node_version => 'v0.10';

    'jscover':
      node_version => 'v0.10';

    'jsctags':
      node_version => 'v0.10';

    'jshint':
      node_version => 'v0.10';

    'meteorite':
      node_version => 'v0.10';

    'mocha':
      node_version => 'v0.10';

    'node-inspector':
      node_version => 'v0.10';

    'jasmine-node':
      node_version => 'v0.10';

    'requirejs':
      node_version => 'v0.10';

    'supervisor':
      node_version => 'v0.10';

    'uglify-js':
      node_version => 'v0.10';

    'lodash':
      node_version => 'v0.10';

    'webdriverjs':
      node_version => 'v0.10';
  }

}
