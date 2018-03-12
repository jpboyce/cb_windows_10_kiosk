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
