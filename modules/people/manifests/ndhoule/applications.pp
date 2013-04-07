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
      'lynx',
      'mercurial',
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
  nodejs::module { 'chai':
    node_version => 'v0.10'
  }

  nodejs::module { 'coffee-script':
    node_version => 'v0.10'
  }

  nodejs::module { 'coffeelint':
    node_version => 'v0.10'
  }

  nodejs::module { 'docco':
    node_version => 'v0.10'
  }

  nodejs::module { 'express':
    node_version => 'v0.10'
  }

  nodejs::module { 'grunt-cli':
    node_version => 'v0.10'
  }

  nodejs::module { 'grunt-init':
    node_version => 'v0.10'
  }

  nodejs::module { 'jscover':
    node_version => 'v0.10'
  }

  nodejs::module { 'jsctags':
    node_version => 'v0.10'
  }

  nodejs::module { 'jshint':
    node_version => 'v0.10'
  }

  nodejs::module { 'meteorite':
    node_version => 'v0.10'
  }

  nodejs::module { 'mocha':
    node_version => 'v0.10'
  }

  nodejs::module { 'node-inspector':
    node_version => 'v0.10'
  }

  nodejs::module { 'requirejs':
    node_version => 'v0.10'
  }

  nodejs::module { 'supervisor':
    node_version => 'v0.10'
  }

  nodejs::module { 'uglify-js':
    node_version => 'v0.10'
  }

  nodejs::module { 'lodash':
    node_version => 'v0.10'
  }

  nodejs::module { 'webdriverjs':
    node_version => 'v0.10'
  }

}
