# Windows 10 CIS Benchmark Items - Section 19.1 - Administrative Templates (User), Control Panel

# Ensure 'Enable screen saver' is set to 'Enabled'
registry_key 'HKEY_USERS\[USER SID]\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop' do
   values [{
     name: 'ScreenSaveActive',
     type: :dword,
     data: 1,
   }]
   action :create
end

# Ensure 'Force specific screen saver: Screen saver executable name' is set to 'Enabled: scrnsave.scr'
registry_key 'HKEY_USERS\[USER SID]\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop' do
   values [{
     name: 'SCRNSAVE.EXE',
     type: :dword,
     data: 1,
   }]
   action :create
end

# Ensure 'Password protect the screen saver' is set to 'Enabled'
registry_key 'HKEY_USERS\[USER SID]\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop' do
   values [{
     name: 'ScreenSaverIsSecure',
     type: :dword,
     data: 1,
   }]
   action :create
end

# Ensure 'Screen saver timeout' is set to 'Enabled: 900 seconds or fewer, but not 0'
registry_key 'HKEY_USERS\[USER SID]\SOFTWARE\Policies\Microsoft\Windows\Control Panel\Desktop' do
   values [{
     name: 'ScreenSaveTimeOut',
     type: :dword,
     data: 1,
   }]
   action :create
end
