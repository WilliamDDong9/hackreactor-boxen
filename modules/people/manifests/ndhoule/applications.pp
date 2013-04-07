class people::ndhoule::applications {

  notify { 'class people::ndhoule::applications declared': }

  # Boxen Packages
  include java
  include xquartz

  include csshx
  include ctags
  include clojure
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
  include clipmenu
  include colloquy
  include cyberduck
  include firefox
  include fluid
  include flux
  include iterm2::stable
  include pckeyboardhack
  include macvim
  include mou
  include rdio
  include sequel_pro
  include skype
  include transmission
  include tunnelblick
  include virtualbox
  include vlc

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
      node_version => 'v0.8';

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
