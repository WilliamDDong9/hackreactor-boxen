class people::ndhoule::files (
  $my_sourcedir   = $people::ndhoule::params::my_sourcedir,
  $my_homedir     = $people::ndhoule::params::my_homedir,
  $my_username    = $people::ndhoule::params::my_username
) {

  file { "${my_homedir}/bin":
    ensure  => directory,
  }

  file { "/tmp":
    ensure  => link,
    target  => "${my_homedir}/tmp",
  }

  file { "${my_homedir}/ephemeral":
    ensure  => directory,
  }

}
