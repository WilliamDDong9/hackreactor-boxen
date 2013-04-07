class people::ndhoule::repositories (
  $my_sourcedir   = $people::ndhoule::params::my_sourcedir,
  $my_homedir     = $people::ndhoule::params::my_homedir,
  $my_username    = $people::ndhoule::params::my_username
) {

  notify { 'class people::ndhoule::repositories declared': }

  repository {
    "dotfiles":
      source   => 'ndhoule/dotfiles',
      path     => "${my_sourcedir}/dotfiles",
      provider => git;

    "zprezto":
      source   => 'ndhoule/prezto',
      path     => "${my_sourcedir}/dotfiles/zprezto",
      require  => Repository["dotfiles"],
      provider => git,
  }

  file { "/Users/${my_username}/.gitconfig":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/gitconfig",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.gitignore.global":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/gitignore.global",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.gvimrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/gvimrc",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.login_conf":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/login_conf",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.tmux.conf":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/tmux.conf",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.vim":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/vim",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.vimrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/vimrc",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.vimrc.bundles":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/vimrc.bundles",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.zlogin":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/zlogin",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.zprezto":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/zprezto",
    require => Repository["zprezto"],
  }

  file { "/Users/${my_username}/.zpreztorc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/zpreztorc",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.zshenv":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/zshenv",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.zshrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/zshrc",
    require => Repository["dotfiles"],
  }

}
