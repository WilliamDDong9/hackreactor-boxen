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

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.2.2"
github "homebrew",   "1.1.2"
github "hub",        "1.0.0"
github "inifile",    "0.10.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",      "1.1.0"
github "nodejs",     "2.0.0"
github "ruby",       "3.3.1"
github "stdlib",     "3.2.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "repository", "2.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",           "1.0.1"
github "appcleaner",       "1.0.0"
github "chrome",           "1.1.0"
github "clipmenu",         "1.0.0", :repo => "jhubert/puppet-clipmenu"
github "clojure",          "1.2.0"
github "colloquy",         "1.0.0"
github "csshx",            "1.0.0"
github "ctags",            "1.0.0"
github "cyberduck",        "1.0.0", :repo => "fromonesrc/puppet-cyberduck"
github "firefox",          "1.0.5"
github "fluid",            "1.0.0"
github "flux",             "0.0.1"
github "iterm2",           "1.0.2"
github "java",             "1.0.6"
github "pckeyboardhack",   "1.0.0", :repo => "nelson/puppet-pckeyboardhack"
github "macvim",           "1.0.0"
github "mongodb",          "1.0.0"
github "mou",              "1.0.0"
github "mysql",            "1.1.0"
github "osx",              "1.0.0"
github "phantomjs",        "1.0.0"
github "postgresql",       "1.0.0"
github "python",           "1.1.1"
github "xquartz",          "1.1.0"
github "rdio",             "1.0.0"
github "sequel_pro",       "1.0.0"
github "skype",            "1.0.2"
github "tmux",             "1.0.1"
github "transmission",     "1.0.0"
github "tunnelblick",      "1.0.0"
github "virtualbox",       "1.0.1"
github "vlc",              "1.0.0"
github "wget",             "1.0.0"
github "zsh",              "1.0.0"
