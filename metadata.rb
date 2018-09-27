name              'cb_windows_10_kiosk'
maintainer        'Jesse Boyce'
maintainer_email  'jesse@jpboyce.org'
license           'MIT'
description       'Installs/Configures cb_windows_10_kiosk'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '0.2.0'
supports          'windows'
depends           'windows', '>= 4.0'
depends           'windows-security-policy', '>= 0.3.7'
depends           'windows_firewall', '>= 3.0'
source_url        'https://github.com/jpboyce/cb_windows_10_kiosk'
issues_url        'https://github.com/jpboyce/cb_windows_10_kiosk/issues'
chef_version      '>= 12.1' if respond_to?(:chef_version)
