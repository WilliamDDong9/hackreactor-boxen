class people::ndhoule::config-sublime (
  $my_sourcedir   = $people::ndhoule::params::my_sourcedir,
  $my_homedir     = $people::ndhoule::params::my_homedir,
  $my_username    = $people::ndhoule::params::my_username
) {

  notify { 'class people::ndhoule::sublime-config declared': }

  define addpkg {
    $packagedir = "Library/Application Support/Sublime Text 2/Packages/"
    $pkgarray = split($name, '[/]')
    $pkgname = $pkgarray[1]

    exec { "git clone https://github.com/${name}.git":
      cwd      => "/Users/${::luser}/${packagedir}",
      provider => 'shell',
      creates  => "/Users/${::luser}/${packagedir}${pkgname}",
      path     => "${boxen::config::homebrewdir}/bin",
      require  => [Package['SublimeText2'], Class['git']],
    }
  }

  $base = "/Users/${::luser}/Library/Application Support"
  $structure = [ "${base}/Sublime Text 2", "${base}/Sublime Text 2/Packages" ]

  file { $structure:
    ensure  => 'directory',
    owner   => "${::luser}",
    mode    => '0755',
  }->

  file { "${base}/Sublime Text 2/Packages/User/Preferences.sublime-settings":
      content  => '
{
  "trim_trailing_white_space_on_save": true,
  "tab_size": 2,
  "translate_tabs_to_spaces": true
}'
  }

  addpkg {
    [
      "wbond/sublime_package_control",
      "aponxi/sublime-better-coffeescript",
      "billymoon/Stylus",
      "danro/LESS-sublime",
      "facelessuser/ApplySyntax",
      "kemayo/sublime-text-2-git",
      "nathos/sass-textmate-bundle",
      "SublimeLinter/SublimeLinter",
      "SublimeText/TrailingSpaces",
    ]:
  }

}
