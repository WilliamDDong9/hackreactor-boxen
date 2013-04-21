class people::ndhoule {

  include people::ndhoule::params
  include people::ndhoule::applications
  include people::ndhoule::applications-gems
  include people::ndhoule::applications-npm
  include people::ndhoule::applications-sublime
  include people::ndhoule::applications-vim
  include people::ndhoule::config
  include people::ndhoule::files
  include people::ndhoule::loginitems
  include people::ndhoule::repositories

  notify { 'class people::ndhoule declared': }

}
