name 'cb-windows-10-kiosk'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license ''
description 'Installs/Configures cb-windows-10-kiosk'
long_description 'Installs/Configures cb-windows-10-kiosk'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/cb-windows-10-kiosk/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/cb-windows-10-kiosk'
supports 'windows'
depends 'windows', '>= 3.0'