class people::ndhoule::config (
  $my_homedir   = $people::ndhoule::params::my_homedir,
  $my_sourcedir = $people::ndhoule::params::my_sourcedir,
  $my_username  = $people::ndhoule::params::my_username
) {

  notify { 'class people::ndhoule::config declared': }


  # OS X Settings

  ## Miscellaneous system settings
  exec { 'Disable Gatekeeper':
    command => 'spctl --master-disable',
    unless  => 'spctl --status | grep disabled',
  }

  exec { 'Show the ~/Library folder':
    command => "chflags nohidden ${my_homedir}/Library",
  }

  exec { 'Restart automatically if OS X freezes':
    command => 'systemsetup -setrestartfreeze on',
  }


  ## System defaults
  boxen::osx_defaults {
    'Disable menu bar transparency':
      ensure => present,
      key    => 'AppleEnableMenuBarTransparency',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Always show scroll bars':
      ensure => present,
      key    => 'AppleShowScrollBars',
      domain => 'NSGlobalDomain',
      value  => 'always',
      type   => 'string',
      user   => $::boxen_user;

    'Disable opening and closing window animations':
      ensure => present,
      key    => 'NSAutomaticWindowAnimationsEnabled',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Increase window resize speed for Cocoa applications':
      ensure => present,
      key    => 'NSWindowResizeTime',
      domain => 'NSGlobalDomain',
      value  => '0.001',
      type   => 'float',
      user   => $::boxen_user;

    'Expand save panel by default':
      ensure => present,
      key    => 'NSNavPanelExpandedStateForSaveMode',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Expand print panel by default':
      ensure => present,
      key    => 'PMPrintingExpandedStateForPrint',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Save to disk (not to iCloud) by default':
      ensure => present,
      key    => 'NSDocumentSaveNewDocumentsToCloud',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Automatically quit printer app once all print jobs are complete':
      ensure => present,
      key    => 'Quit When Finished',
      domain => 'com.apple.print.PrintingPrefs',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable "natural" scrolling':
      ensure => present,
      key    => 'com.apple.swipescrolldirection',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable the “Are you sure you want to open this application?” dialog':
      ensure => present,
      key    => 'LSQuarantine',
      domain => 'com.apple.LaunchServices',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Display ASCII control characters using caret notation in standard text views':
      ensure => present,
      key    => 'NSTextShowsControlCharacters',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable Resume system-wide':
      ensure => present,
      key    => 'NSQuitAlwaysKeepsWindows',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable automatic termination of inactive apps':
      ensure => present,
      key    => 'NSDisableAutomaticTermination',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable the crash reporter':
      ensure => present,
      key    => 'DialogType',
      domain => 'com.apple.CrashReporter',
      value  => 'none',
      type   => 'string',
      user   => $::boxen_user;

    'Set Help Viewer windows to non-floating mode':
      ensure => present,
      key    => 'DevMode',
      domain => 'com.apple.helpviewer',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window':
      ensure => present,
      key    => 'AdminHostInfo',
      domain => 'com.apple.loginwindow',
      value  => 'HostName',
      user   => $::boxen_user;

    'Check for software updates once a week':
      ensure => present,
      key    => 'ScheduleFrequency',
      domain => 'com.apple.SoftwareUpdate',
      value  => '7',
      type   => 'int',
      user   => $::boxen_user;

  ###############################################################################
  # Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
  ###############################################################################

  # Trackpad: swipe between pages with three fingers

    'Trackpad: swipe between pages with three fingers':
      ensure => present,
      key    => 'AppleEnableSwipeNavigateWithScrolls',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable three-finger horizontal swipe':
      ensure => present,
      key    => 'TrackpadThreeFingerHorizSwipeGesture',
      domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
      value  => '1',
      type   => 'int',
      user   => $::boxen_user;

    'Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)':
      ensure => present,
      key    => 'AppleKeyboardUIMode',
      domain => 'NSGlobalDomain',
      value  => '3',
      type   => 'int',
      user   => $::boxen_user;

    'Use scroll gesture with the Ctrl (^) modifier key to zoom':
      ensure => present,
      key    => 'closeViewScrollWheelToggle',
      domain => 'com.apple.universalaccess',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Use scroll gesture with the Ctrl (^) modifier key to zoom':
      ensure => present,
      key    => 'HIDScrollZoomModifierMask',
      domain => 'com.apple.universalaccess',
      value  => '262144',
      type   => 'int',
      user   => $::boxen_user;

    'Follow the keyboard focus while zoomed in':
      ensure => present,
      key    => 'closeViewZoomFollowsFocus',
      domain => 'com.apple.universalaccess',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable press-and-hold for keys in favor of key repeat':
      ensure => present,
      key    => 'ApplePressAndHoldEnabled',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Set a blazingly fast keyboard repeat rate':
      ensure => present,
      key    => 'KeyRepeat',
      domain => 'NSGlobalDomain',
      value  => '0',
      type   => 'int',
      user   => $::boxen_user;

    'Automatically illuminate built-in MacBook keyboard in low light':
      ensure => present,
      key    => 'kDim',
      domain => 'com.apple.BezelServices',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Turn off keyboard illumination when computer is not used for 5 minutes':
      ensure => present,
      key    => 'kDimTime',
      domain => 'com.apple.BezelServices',
      value  => '300',
      type   => 'int',
      user   => $::boxen_user;

    'Disable autocorrect':
      ensure => present,
      key    => 'NSAutomaticSpellingCorrectionEnabled',
      domain => 'NSGlobalDomain',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;


    ## Screen
    'Require password immediately after sleep or screen saver begins':
      ensure => present,
      key    => 'askForPassword',
      domain => 'com.apple.screensaver',
      value  => '0',
      type   => 'int',
      user   => $::boxen_user;

    'Save screenshots to the desktop':
      ensure => present,
      key    => 'location',
      domain => 'com.apple.screencapture',
      value  => '$HOME/Desktop',
      type   => 'string',
      user   => $::boxen_user;

    'Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)':
      ensure => present,
      key    => 'type',
      domain => 'com.apple.screencapture',
      value  => 'png',
      type   => 'string',
      user   => $::boxen_user;

    'Disable shadow in screenshots':
      ensure => present,
      key    => 'disable-shadow',
      domain => 'com.apple.screencapture',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable subpixel font rendering on non-Apple LCDs':
      ensure => present,
      key    => 'NSGlobalDomain',
      domain => 'AppleFontSmoothing',
      value  => '2',
      type   => 'int',
      user   => $::boxen_user;


    ## Finder
    'Disable window animations and Get Info animations':
      ensure => present,
      key    => 'DisableAllAnimations',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show icons for external hard drives on the desktop':
      ensure => present,
      key    => 'ShowExternalHardDrivesOnDesktop',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show icons for hard drives on the desktop':
      ensure => present,
      key    => 'ShowHardDrivesOnDesktop',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show icons for removable media on the desktop':
      ensure => present,
      key    => 'com.apple.finder',
      domain => 'ShowRemovableMediaOnDesktop',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show icons for servers on the desktop':
      ensure => present,
      key    => 'ShowMountedServersOnDesktop',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show all filename extensions':
      ensure => present,
      key    => 'AppleShowAllExtensions',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show status bar':
      ensure => present,
      key    => 'ShowStatusBar',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Allow text selection in Quick Look':
      ensure => present,
      key    => 'QLEnableTextSelection',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Display full POSIX path as Finder window title':
      ensure => present,
      key    => '_FXShowPosixPathInTitle',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'When performing a search, search the current folder by default':
      ensure => present,
      key    => 'FXDefaultSearchScope',
      domain => 'com.apple.finder',
      value  => 'SCcf',
      type   => 'string',
      user   => $::boxen_user;

    'Disable the warning when changing a file extension':
      ensure => present,
      key    => 'FXEnableExtensionChangeWarning',
      domain => 'com.apple.finder',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Avoid creating .DS_Store files on network volumes':
      ensure => present,
      key    => 'DSDontWriteNetworkStores',
      domain => 'com.apple.desktopservices',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Open a new Finder window when a read-only volume is mounted':
      ensure => present,
      key    => 'auto-open-ro-root',
      domain => 'com.apple.frameworks.diskimages',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Open a new Finder window when a writable volume is mounted':
      ensure => present,
      key    => 'auto-open-rw-root',
      domain => 'com.apple.frameworks.diskimages',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Open new Finder window when a removable disk is mounted':
      ensure => present,
      key    => 'OpenWindowForNewRemovableDisk',
      domain => 'com.apple.finder',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Use list view in all Finder windows by default':
      ensure => present,
      key    => 'FXPreferredViewStyle',
      domain => 'com.apple.finder',
      value  => 'Nlsv',
      type   => 'string',
      user   => $::boxen_user;

    'Disable the warning before emptying the Trash':
      ensure => present,
      key    => 'com.apple.finder',
      domain => 'WarnOnEmptyTrash',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable AirDrop over Ethernet and on unsupported Macs running Lion':
      ensure => present,
      key    => 'BrowseAllInterfaces',
      domain => 'com.apple.NetworkBrowser',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;


    ## Dock & Hot corners
    # TODO: Add hot corners
    'Enable highlight hover effect for the grid view of a stack (Dock)':
      ensure => present,
      key    => 'mouse-over-hilite-stack',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Set the icon size of Dock items to 40 pixels':
      ensure => present,
      key    => 'tilesize',
      domain => 'com.apple.dock',
      value  => '40',
      type   => 'int',
      user   => $::boxen_user;

    'Use new-style stack view on dock folders':
      ensure => present,
      key    => 'use-new-list-stack',
      domain => 'com.apple.dock',
      value  => 'YES',
      type   => 'string',
      user   => $::boxen_user;

    'Enable spring loading for all Dock items':
      ensure => present,
      key    => 'enable-spring-load-actions-on-all-items',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Show indicator lights for open applications in the Dock':
      ensure => present,
      key    => 'show-process-indicators',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Wipe all (default) app icons from the Dock':
      ensure => present,
      key    => 'persistent-apps',
      domain => 'com.apple.dock',
      value  => '',
      type   => 'array',
      user   => $::boxen_user;

    'Reduce the animation time for Mission Control/Expose':
      ensure => present,
      key    => 'expose-animation-duration',
      domain => 'com.apple.dock',
      value  => '0.1',
      type   => 'float',
      user   => $::boxen_user;

    'Don’t group windows by application in Mission Control':
      ensure => present,
      key    => 'expose-group-by-app',
      domain => 'com.apple.dock',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Don’t show Dashboard as a Space':
      ensure => present,
      key    => 'dashboard-in-overlay',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Make Dock icons of hidden applications translucent':
      ensure => present,
      key    => 'showhidden',
      domain => 'com.apple.dock',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    ## Safari/WebKit
    'Set Safari’s home page to `about:blank` for faster loading':
      ensure => present,
      key    => 'HomePage',
      domain => 'com.apple.Safari',
      value  => 'about:blank',
      type   => 'string',
      user   => $::boxen_user;

    'Prevent Safari from opening files automatically after downloading':
      ensure => present,
      key    => 'com.apple.Safari',
      domain => 'AutoOpenSafeDownloads',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Allow hitting the Backspace key to go to the previous page in history':
      ensure => present,
      key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Hide Safari’s bookmarks bar by default':
      ensure => present,
      key    => 'ShowFavoritesBar',
      domain => 'com.apple.Safari',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Disable Safari’s thumbnail cache for History and Top Sites':
      ensure => present,
      key    => 'com.apple.Safari',
      domain => 'DebugSnapshotsUpdatePolicy',
      value  => '2',
      type   => 'int',
      user   => $::boxen_user;

    'Enable Safari’s debug menu':
      ensure => present,
      key    => 'IncludeInternalDebugMenu',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Make Safari’s search banners default to Contains instead of Starts With':
      ensure => present,
      key    => 'FindOnPageMatchesWordStartsOnly',
      domain => 'com.apple.Safari',
      value  => 'false',
      type   => 'bool',
      user   => $::boxen_user;

    'Remove useless icons from Safari’s bookmarks bar':
      ensure => present,
      key    => 'ProxiesInBookmarksBar',
      domain => 'com.apple.Safari',
      value  => '()',
      user   => $::boxen_user;

    'Enable the Develop menu in Safari':
      ensure => present,
      key    => 'IncludeDevelopMenu',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
    'Enable the Develop menu in Safari':
      ensure => present,
      key    => 'WebKitDeveloperExtrasEnabledPreferenceKey',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
    'Enable the Develop menu context menu in Safari':
      ensure => present,
      key    => 'com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled',
      domain => 'com.apple.Safari',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Add a context menu item for showing the Web Inspector in web views':
      ensure => present,
      key    => 'WebKitDeveloperExtras',
      domain => 'NSGlobalDomain',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;


    ## Terminal
    # TODO: Fix for navigation keys
    'Only use UTF-8 in Terminal.app':
      ensure => present,
      key    => 'StringEncodings',
      domain => 'com.apple.terminal',
      value  => '4',
      type   => 'array',
      user   => $::boxen_user;


    ## Time Machine
    'Prevent Time Machine from prompting to use new hard drives as backup volume':
      ensure => present,
      key    => 'DoNotOfferNewDisksForBackup',
      domain => 'com.apple.TimeMachine',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Prevent Time Machine from prompting to use new hard drives as backup volume':
      ensure => present,
      key    => 'TMShowUnsupportedNetworkVolumes',
      domain => 'com.apple.systempreferences',
      value  => '1',
      type   => 'int',
      user   => $::boxen_user;


    ## TextEdit
    'Use plain text mode for new TextEdit documents':
      ensure => present,
      key    => 'RichText',
      domain => 'com.apple.TextEdit',
      value  => '0',
      type   => 'int',
      user   => $::boxen_user;

    'Open files as UTF-8 in TextEdit':
      ensure => present,
      key    => 'PlainTextEncoding',
      domain => 'com.apple.TextEdit',
      value  => '4',
      type   => 'int',
      user   => $::boxen_user;
    'Save files as UTF-8 in TextEdit':
      ensure => present,
      key    => 'PlainTextEncodingForWrite',
      domain => 'com.apple.TextEdit',
      value  => '4',
      type   => 'int',
      user   => $::boxen_user;


    ## Disk Utility
    'Enable the debug menu in Disk Utility':
      ensure => present,
      key    => 'DUDebugMenuEnabled',
      domain => 'com.apple.DiskUtility',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;

    'Enable advanced options in Disk Utility':
      ensure => present,
      key    => 'advanced-image-options',
      domain => 'com.apple.DiskUtility',
      value  => 'true',
      type   => 'bool',
      user   => $::boxen_user;
  }


  # Desktop and Icon View settings
  exec { 'Show item info near icons on the desktop':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Show item info near icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Show item info near icons in other icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Show item info to the right of the icons on the desktop':
    command => '/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Enable snap-to-grid for icons on the desktop':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Enable snap-to-grid for icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Enable snap-to-grid for icons in other icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase grid spacing for icons on the desktop':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase grid spacing for icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase grid spacing for icons in other icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase the size of icons on the desktop and in other icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase the size of icons in other icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist',
  }

  exec { 'Increase the size of icons in icon views':
    command => '/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist',
  }

}
