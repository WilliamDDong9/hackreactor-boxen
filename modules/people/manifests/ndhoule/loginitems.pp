class people::ndhoule::loginitems {

  notify { 'class people::ndhoule::loginitems declared': }

  osx_login_item {
    'Alfred 2':
      name    => 'Alfred 2',
      path    => '/Applications/Alfred 2.app',
      hidden  => true,
      require => Class['alfred2'];

    'Calendar':
      name    => 'Calendar',
      path    => '/Applications/Calendar.app',
      hidden  => true;

    'ClipMenu':
      name    => 'ClipMenu',
      path    => '/Applications/ClipMenu.app',
      hidden  => true,
      require => Class['clipmenu'];

    'Flux':
      name    => 'Flux',
      path    => '/Applications/Flux.app',
      hidden  => true,
      require => Class['flux'];

    'Messages':
      name    => 'Messages',
      path    => '/Applications/Messages.app',
      hidden  => true;

    'Rdio':
      name    => 'Rdio',
      path    => '/Applications/Rdio.app',
      hidden  => true,
      require => Class['rdio'];

    'Slate':
      name    => 'Slate',
      path    => '/Applications/Slate.app',
      hidden  => true,
      require => Class['slate'];
  }

}
