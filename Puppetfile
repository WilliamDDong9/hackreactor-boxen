# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.0.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.1.0"
github "homebrew",   "1.1.1"
github "hub",        "1.0.0"
github "inifile",    "1.0.0"
github "nginx",      "1.1.0"
github "nodejs",     "2.0.0"
github "nvm",        "1.0.0"
github "ruby",       "3.6.0"
github "stdlib",     "3.2.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "sysctl",         "1.0.0"
github "repository",     "1.0.0"

github "alfred2",        "0.0.1", :repo => "grahamgilbert/puppet-alfred2"
github "appcleaner",     "1.0.0"
github "chrome",         "1.1.0"
github "clipmenu",       "1.0.0", :repo => "jhubert/puppet-clipmenu"
github "clojure",        "1.2.0"
github "colloquy",       "1.0.0"
github "csshx",          "1.0.0"
github "ctags",          "1.0.0"
github "cyberduck",      "1.0.0"
github "dockutil",       "0.1.2", :repo => "grahamgilbert/puppet-dockutil"
github "firefox",        "1.0.5"
github "fluid",          "1.0.0"
github "flux",           "0.0.1"
github "iterm2",         "1.0.2"
github "java",           "1.0.6"
github "pckeyboardhack", "1.0.0", :repo => "nelson/puppet-pckeyboardhack"
github "macvim",         "1.0.0"
github "openoffice",     "1.1.0", :repo => "dieterdemeyer/puppet-openoffice"
github "mongodb",        "1.0.0"
github "mou",            "1.0.0"
github "mysql",          "1.1.0"
github "osx",            "1.0.0"
github "phantomjs",      "1.0.0"
github "postgresql",     "1.0.0"
github "python",         "1.1.1"
github "xquartz",        "1.1.0"
github "rdio",           "1.0.0"
github "sequel_pro",     "1.0.0"
github "skype",          "1.0.2"
github "slate",          "1.0.0"
github "sublime_text_2", "1.1.0"
github "tmux",           "1.0.2"
github "transmission",   "1.0.0"
github "tunnelblick",    "1.0.0"
github "virtualbox",     "1.0.1"
github "vlc",            "1.0.0"
github "vmware_fusion",  "1.0.0"
github "vim",            "1.0.2"
github "wget",           "1.0.0"
github "zsh",            "1.0.0"
