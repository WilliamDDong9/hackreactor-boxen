class people::ndhoule::applications-gems {

  notify { 'class people::ndhoule::applications-gems declared': }

  ruby::gem { "bundler for ${version}":
    gem     => 'bundler',
    ruby    => $version,
    version => '~> 1.3.5'
  }

}
