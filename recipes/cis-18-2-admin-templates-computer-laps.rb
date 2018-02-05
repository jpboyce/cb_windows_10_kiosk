# Windows 10 CIS Benchmark Items - Section 18.2 - Administrative Templates (Computer), LAPS

# Ensure LAPS AdmPwd GPO Extension / CSE is installed 
#HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\GPExtensions\{D76B9641-3288-4f75-942D087DE603E3EA}:DllName 

#Ensure 'Do not allow password expiration time longer than required by policy' is set to 'Enabled' 
#HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft Services\AdmPwd:PwdExpirationProtectionEnabled 

# Ensure 'Enable Local Admin Password Management' is set to 'Enabled'
# HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft Services\AdmPwd:AdmPwdEnabled 

# Ensure 'Password Settings: Password Complexity' is set to 'Enabled: Large letters + small letters + numbers + special characters' (
# HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft Services\AdmPwd:PasswordComplexity 

# Ensure 'Password Settings: Password Length' is set to 'Enabled: 15 or more' 
# HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft Services\AdmPwd:PasswordLength 

# Ensure 'Password Settings: Password Age (Days)' is set to 'Enabled: 30 or fewer' 
# HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft Services\AdmPwd:PasswordAgeDays 



#registry_key "HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\Personalization" do
#  values [{
#    name: "NoLockScreenCamera",
#    type: :dword,
#    data: 1
#  }]
#  action :create
#end
