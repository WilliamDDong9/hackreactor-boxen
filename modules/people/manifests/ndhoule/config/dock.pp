class people::ndhoule::config::dock {

  notify { 'class people::ndhoule::config::dock declared': }

  include dockutil

  ## Remove all default applications
  dockutil::item {
    'Remove Launchpad':
      item    => "/Applications/Launchpad.app",
      label   => "Launchpad",
      action  => "remove";

    'Remove Mission Control':
      item => "/Applications/Mission Control.app",
      label   => "Mission Control",
      action => "remove";

    'Remove Safari':
      item => "/Applications/Safari.app",
      label   => "Safari",
      action => "remove";

    'Remove Mail':
      item => "/Applications/Mail.app",
      label   => "Mail",
      action => "remove";

    'Remove Contacts':
      item => "/Applications/Contacts.app",
      label   => "Contacts",
      action => "remove";

    'Remove Reminders':
      item => "/Applications/Reminders.app",
      label   => "Reminders",
      action => "remove";

    'Remove Notes':
      item => "/Applications/Notes.app",
      label   => "Notes",
      action => "remove";

    'Remove FaceTime':
      item => "/Applications/FaceTime.app",
      label   => "FaceTime",
      action => "remove";

    'Remove Photo Booth':
      item => "/Applications/Photo Booth.app",
      label   => "Photo Booth",
      action => "remove";

    'Remove iTunes':
      item => "/Applications/iTunes.app",
      label   => "iTunes",
      action => "remove";

    'Remove App Store':
      item => "/Applications/App Store.app",
      label   => "App Store",
      action => "remove";

    'Remove System Preferences':
      item => "/Applications/System Preferences.app",
      label   => "System Preferences",
      action => "remove";
  }

}
