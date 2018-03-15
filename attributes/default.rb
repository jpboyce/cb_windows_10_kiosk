# Default attributes

# CIS Levels to apply
# By default we would want CIS Level 1 but not level 2
default['cb_windows_10_kiosk']['cis_level']['1'] = 'true'
default['cb_windows_10_kiosk']['cis_level']['2'] = 'false'
default['cb_windows_10_kiosk']['cis_level']['bitlocker'] = 'false'

# SecEdit values
default['cb_windows_10_kiosk']['secedit_template']['location'] = 'C:\Windows\security\templates'
default['cb_windows_10_kiosk']['secedit_database']['location'] = 'C:\Windows\security\database'
default['cb_windows_10_kiosk']['secedit_database']['name'] = 'kioskpolicy.sdb'

# Kiosk account details
# In reality, you would secure this better but for the purposes of this cookbook, we'll have the Kiosk default account details here
default['cb_windows_10_kiosk']['account']['username'] = 'kiosk'
default['cb_windows_10_kiosk']['account']['password'] = 'P@ssw0rd!'
default['cb_windows_10_kiosk']['account']['description'] = 'Kiosk Account'
default['cb_windows_10_kiosk']['account']['groups'] = ['Users'] # Array to add the Kiosk account to, in most cases this needs to just be Users

# Default Assigned Access
# Defaulting the shell to explorer.exe for everyone just in case
default['cb_windows_10_kiosk']['administrators']['shell'] = 'explorer.exe'
default['cb_windows_10_kiosk']['users']['shell'] = 'explorer.exe'
default['cb_windows_10_kiosk']['kiosk']['shell'] = 'explorer.exe'

# Default Power settings
# While it's possible to specify separate on battery/on power settings, since most kiosks are fixed and on power, the same attribute will be used for both options
default['cb_windows_10_kiosk']['power_setting']['name'] = 'High Performance'
default['cb_windows_10_kiosk']['power_setting']['guid'] = '8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'
# Never turn off the hard disk
default['cb_windows_10_kiosk']['power_setting']['disk_timeout'] = 0
# IE Javascript performance to max
default['cb_windows_10_kiosk']['power_setting']['ie_javascript_timer'] = 1
# Sleep after 0 minutes (never)
default['cb_windows_10_kiosk']['power_setting']['standby_timeout'] = 0
# Allow hybrid sleep
# Hibernate after 0 minutes (never)
default['cb_windows_10_kiosk']['power_setting']['hibernate_timeout'] = 0
# USB selective suspend setting, 0 to disable
default['cb_windows_10_kiosk']['power_setting']['usb_suspend'] = 0
# Power button setting, 3=Shutdown
default['cb_windows_10_kiosk']['power_setting']['power_button'] = 3
# PCI Express Power, 0 = power management off
default['cb_windows_10_kiosk']['power_setting']['pci_power'] = 0
# CPU Power management for min performance, 64=max performance
default['cb_windows_10_kiosk']['power_setting']['min_cpu_power'] = 64
# CPU Power management for max performance, 64=max performance
default['cb_windows_10_kiosk']['power_setting']['max_cpu_power'] = 64
# System Cooling Policy, 1=Active
default['cb_windows_10_kiosk']['power_setting']['cooling_policy'] = 1
# Turn off monitor, 1200 seconds or 20 minutes
default['cb_windows_10_kiosk']['power_setting']['monitor_timeout'] = 1200

# Keyboard Filter items
default['cb_windows_10_kiosk']['keyboard_filter']['blocked_keys'] = [
'Win+E',
'Win+F',
'Win+R',
'Alt+Tab',
'Ctrl+Tab',
'Win+Tab',
'Win+D',
'Win+M',
'Shift+Ctrl+Esc',
'Win+L',
'Win+U'
]
