class people::ndhoule {

  include people::ndhoule::params
  include people::ndhoule::applications
  include people::ndhoule::applications-npm
  include people::ndhoule::applications-sublime
  include people::ndhoule::applications-vim
  include people::ndhoule::repositories
  include people::ndhoule::config
  include people::ndhoule::files

  notify { 'class people::ndhoule declared': }

}
