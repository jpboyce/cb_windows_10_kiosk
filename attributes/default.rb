# Default attributes

# CIS Levels to apply
# By default we would want CIS Level 1 but not level 2
default['cis']['level']['1'] = 'true'
default['cis']['level']['2'] = 'false'
default['cis']['level']['bitlocker'] = 'false'

# SecEdit values
default['secedit']['template']['location'] = 'C:\Windows\security\templates'
default['secedit']['database']['location'] = 'C:\Windows\security\database'
default['secedit']['database']['name'] = 'kioskpolicy.sdb'

# Kiosk account details
# In reality, you would secure this better but for the purposes of this cookbook, we'll have the Kiosk default account details here
default['account']['kiosk']['username'] = 'kiosk'
default['account']['kiosk']['password'] = 'P@ssw0rd!'
default['account']['kiosk']['description'] = 'Kiosk Account'
default['account']['kiosk']['groups'] = ['Users'] # Array to add the Kiosk account to, in most cases this needs to just be Users

# Default Assigned Access
# Defaulting the shell to explorer.exe for everyone just in case
default['account']['administrators']['shell'] = 'explorer.exe'
default['account']['users']['shell'] = 'explorer.exe'
default['account']['kiosk']['shell'] = 'explorer.exe'

# Default Power settings
# While it's possible to specify separate on battery/on power settings, since most kiosks are fixed and on power, the same attribute will be used for both options
default['power_setting']['active_plan']['name'] = 'High Performance'
default['power_setting']['active_plan']['guid'] = '8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'
# Never turn off the hard disk
default['power_setting']['active_plan']['disk_timeout'] = '0'
# IE Javascript performance to max
default['power_setting']['active_plan']['ie_javascript_timer'] = '1'
# Sleep after 0 minutes (never)
default['power_setting']['active_plan']['standby_timeout'] = '0'
# Allow hybrid sleep

# Hibernate after 0 minutes (never)
default['power_setting']['active_plan']['hibernate_timeout'] = '0'
# USB selective suspend setting, 0 to disable
default['power_setting']['active_plan']['usb_suspend'] = '0'
# Power button setting, 3=Shutdown
default['power_setting']['active_plan']['power_button'] = '3'
# PCI Express Power, 0 = power management off
default['power_setting']['active_plan']['pci_power'] = '0'
# CPU Power management for min performance, 64=max performance
default['power_setting']['active_plan']['min_cpu_power'] = '64'
# CPU Power management for max performance, 64=max performance
default['power_setting']['active_plan']['max_cpu_power'] = '64'
# System Cooling Policy, 1=Active
default['power_setting']['active_plan']['cooling_policy'] = '1'
# Turn off monitor, 1200 seconds or 20 minutes
default['power_setting']['active_plan']['monitor_timeout'] = '1200'
