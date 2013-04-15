class people::ndhoule::applications {

  notify { 'class people::ndhoule::applications declared': }

  include clojure
  include csshx
  include ctags
  include hub
  include java
  include mongodb
  include mysql
  include phantomjs
  include postgresql
  include python
  include tmux
  include wget
  include xquartz
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
  include openoffice
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
