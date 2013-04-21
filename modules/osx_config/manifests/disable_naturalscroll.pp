class osx_config::disable_naturalscroll {

  boxen::osx_defaults {
    'Disable "natural" scrolling':
      ensure => present,
      key    => 'com.apple.swipescrolldirection',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;
  }

}
