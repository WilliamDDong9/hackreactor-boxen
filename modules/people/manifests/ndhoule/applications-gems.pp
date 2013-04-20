class people::ndhoule::applications-gems {

  notify { 'class people::ndhoule::applications-gems declared': }

  ruby::gem { "bundler for ${version}":
    gem     => 'bundler',
    ruby    => '1.9.3',
    version => '~> 1.3.5'
  }

  ruby::gem { "guard for ${version}":
    gem     => 'guard',
    ruby    => '1.9.3',
    version => '~> 1.7.0'
  }

  ruby::gem { "pry for ${version}":
    gem     => 'pry',
    ruby    => '1.9.3',
    version => '~> 0.9.12'
  }

  ruby::gem { "rails for ${version}":
    gem     => 'rails',
    ruby    => '1.9.3',
    version => '~> 3.2.13'
  }

  ruby::gem { "sass for ${version}":
    gem     => 'sass',
    ruby    => '1.9.3',
    version => '~> 3.2.7'
  }

}
