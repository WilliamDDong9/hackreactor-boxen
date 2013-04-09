class people::ndhoule::repositories (
  $my_sourcedir   = $people::ndhoule::params::my_sourcedir,
  $my_homedir     = $people::ndhoule::params::my_homedir,
  $my_username    = $people::ndhoule::params::my_username
) {

  notify { 'class people::ndhoule::repositories declared': }

  git::config::global {
    'user.name':        value => 'Nathan Houle';
    'user.email':       value => 'nathan@nathanhoule.com';
    'core.editor':      value => 'vim';
    'core.pager':       value => 'vimpager';
    'color.ui':         value => 'true';
    'merge.tool':       value => 'Kaleidoscope';
    'mergetool.prompt': value => 'false';
    'diff.tool':        value => 'Kaleidoscope';
    'difftool.prompt':  value => 'false';

    # Aliases
    'alias.lp':         value => 'log -p';
    'alias.snapshot':   value => '!git stash save "snapshot: $(date)" && git stash apply "stash@{0}"';
    'alias.ours':       value => '"!f() { git checkout --ours $@ && git add $@; }; f"';
    'alias.theirs':     value => '"!f() { git checkout --theirs $@ && git add $@; }; f"';
  }

  repository {
    "dotfiles":
      source   => 'ndhoule/dotfiles',
      path     => "${my_sourcedir}/dotfiles";
    "zprezto":
      source   => 'ndhoule/prezto',
      path     => "${my_sourcedir}/zprezto",
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

  file { "/Users/${my_username}/.slate":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/slate",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.vimrc":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/vimrc",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.zlogin":
    ensure  => link,
    target  => "${my_sourcedir}/dotfiles/zlogin",
    require => Repository["dotfiles"],
  }

  file { "/Users/${my_username}/.zprezto":
    ensure  => link,
    target  => "${my_sourcedir}/zprezto",
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
