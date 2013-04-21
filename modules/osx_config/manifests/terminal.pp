class osx_config::terminal {

  boxen::osx_defaults {
    # TODO: Fix for navigation keys
    'Only use UTF-8 in Terminal.app':
      ensure => present,
      key    => 'StringEncodings',
      domain => 'com.apple.terminal',
      value  => '4',
      type   => 'array',
      user   => $::boxen_user;
  }

}
