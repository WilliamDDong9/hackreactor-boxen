class people::hackreactorworkstations::files (
  $my_sourcedir   = $people::hackreactorworkstations::params::my_sourcedir,
  $my_homedir     = $people::hackreactorworkstations::params::my_homedir,
  $my_username    = $people::hackreactorworkstations::params::my_username
) {

  file { "${my_homedir}/bin":
    ensure  => directory,
  }

  file { "${my_homedir}/code":
    ensure  => directory,
  }

  file { "${my_homedir}/tmp":
    ensure  => link,
    target  => "/tmp",
  }

}
