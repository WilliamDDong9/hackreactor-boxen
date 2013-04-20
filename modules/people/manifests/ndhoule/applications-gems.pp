class people::ndhoule::applications-gems {

  notify { 'class people::ndhoule::applications-gems declared': }

  ruby::gem { "bundler for ${version}":
    gem     => 'bundler',
    ruby    => $version,
    version => '~> 1.3.5'
  }

  ruby::gem { "guard for ${version}":
    gem     => 'guard',
    ruby    => $version,
    version => '~> 1.7.0'
  }

  ruby::gem { "pry for ${version}":
    gem     => 'pry',
    ruby    => $version,
    version => '~> 0.9.12'
  }

  ruby::gem { "rails for ${version}":
    gem     => 'rails',
    ruby    => $version,
    version => '~> 3.2.13'
  }

  ruby::gem { "sass for ${version}":
    gem     => 'sass',
    ruby    => $version,
    version => '~> 3.2.7'
  }

}
