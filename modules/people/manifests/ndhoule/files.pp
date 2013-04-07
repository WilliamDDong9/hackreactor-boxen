class people::ndhoule::files (
  $my_sourcedir   = $people::ndhoule::params::my_sourcedir,
  $my_homedir     = $people::ndhoule::params::my_homedir,
  $my_username    = $people::ndhoule::params::my_username
) {

  file { "${my_homedir}/bin":
    ensure  => directory,
  }

  file { "${my_homedir}/tmp":
    ensure  => link,
    target  => "/tmp",
  }

  file { "${my_homedir}/ephemeral":
    ensure  => directory,
  }

}
