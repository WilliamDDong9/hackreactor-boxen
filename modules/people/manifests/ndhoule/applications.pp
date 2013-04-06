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
      'ctags',
      'git-flow',
      'gnu-sed',
      'heroku-toolbelt',
      'leiningen',
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
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'coffee-script':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'coffeelint':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'docco':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'express':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'grunt-cli':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'grunt-init':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'jscover':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'jsctags':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'jshint':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'meteorite':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'mocha':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'node-inspector':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'requirejs':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'supervisor':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'uglify-js':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'lodash':
    nodejs_version => 'v0.10'
  }

  nodejs::module { 'webdriverjs':
    nodejs_version => 'v0.10'
  }

}
