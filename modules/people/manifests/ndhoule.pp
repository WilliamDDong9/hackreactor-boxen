class people::ndhoule {

  include people::ndhoule::params
  include people::ndhoule::applications
  include people::ndhoule::repositories
  include people::ndhoule::config
  include people::ndhoule::config-sublime
  include people::ndhoule::files

  notify { 'class people::ndhoule declared': }

}
