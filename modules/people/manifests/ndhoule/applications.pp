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

}
