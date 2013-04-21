class people::ndhoule {

  include people::ndhoule::params
  include people::ndhoule::files

  include people::ndhoule::applications::main
  include people::ndhoule::applications::gems
  include people::ndhoule::applications::npm
  include people::ndhoule::applications::sublime
  include people::ndhoule::applications::vim

  include people::ndhoule::config::dock
  include people::ndhoule::config::dotfiles
  include people::ndhoule::config::loginitems
  include people::ndhoule::config::osx

  notify { 'class people::ndhoule declared': }

}
