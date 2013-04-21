class people::ndhoule::applications::main {

  notify { 'class people::ndhoule::applications::main declared': }

  include clojure
  include csshx
  include ctags
  include mongodb
  include mysql
  include phantomjs
  include postgresql
  include tmux
  include zsh

  include alfred2
  include appcleaner
  include clipmenu
  include colloquy
  include chrome::canary
  include cyberduck
  include fluid
  include flux
  include iterm2::dev
  include mou
  include openoffice
  include pckeyboardhack
  include rdio
  include sequel_pro
  include skype
  include slate
  include transmission
  include tunnelblick
  include virtualbox
  include vlc
  include vmware_fusion


  # Homebrew Packages
  package {
    [
      'cowsay',
      'heroku-toolbelt',
      'nailgun',
      'reattach-to-user-namespace',
      'rlwrap',
      'selenium-server-standalone',
      'ssh-copy-id',
      'sshfs',
      'vimpager'
    ]:
  }

}
