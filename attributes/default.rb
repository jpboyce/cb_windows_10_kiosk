# Default attributes

# SecEdit values
default['secedit']['template']['location'] = 'C:\Windows\security\templates'
default['secedit']['database']['location'] = 'C:\Windows\security\database'
default['secedit']['database']['name'] = 'kioskpolicy.sdb'

# System Access defaults - these are items under the [System Access] heading in a secedit cfg file
default['cfg_file']['system_access']['MinimumPasswordAge'] = nil
default['cfg_file']['system_access']['MaximumPasswordAge'] = nil
default['cfg_file']['system_access']['MinimumPasswordLength'] = nil
default['cfg_file']['system_access']['PasswordComplexity'] = nil
default['cfg_file']['system_access']['PasswordHistorySize'] = nil
default['cfg_file']['system_access']['LockoutBadCount'] = nil
default['cfg_file']['system_access']['RequireLogonToChangePassword'] = nil
default['cfg_file']['system_access']['ForceLogoffWhenHourExpire'] = nil
default['cfg_file']['system_access']['NewAdministratorName'] = nil
default['cfg_file']['system_access']['NewGuestName'] = nil
default['cfg_file']['system_access']['ClearTextPassword'] = nil
default['cfg_file']['system_access']['LSAAnonymousNameLookup'] = nil
default['cfg_file']['system_access']['EnableAdminAccount'] = nil
default['cfg_file']['system_access']['EnableGuestAccount'] = nil

# Event Audit defaults - these are items under the [Event Audit] heading in a secedit cfg file
default['cfg_file']['event_audit']['AuditSystemEvents'] = nil
default['cfg_file']['event_audit']['AuditLogonEvents'] = nil
default['cfg_file']['event_audit']['AuditObjectAccess'] = nil
default['cfg_file']['event_audit']['AuditPrivilegeUse'] = nil
default['cfg_file']['event_audit']['AuditPolicyChange'] = nil
default['cfg_file']['event_audit']['AuditAccountManage'] = nil
default['cfg_file']['event_audit']['AuditProcessTracking'] = nil
default['cfg_file']['event_audit']['AuditDSAccess'] = nil

# Privilege Rights defaults - these are items under the [Privilege Rights] in a secedit cfg file
default['cfg_file']['privilege_rights']['SeNetworkLogonRight'] = nil
default['cfg_file']['privilege_rights']['SeBackupPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeChangeNotifyPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeSystemtimePrivilege'] = nil
default['cfg_file']['privilege_rights']['SeCreatePagefilePrivilege'] = nil
default['cfg_file']['privilege_rights']['SeDebugPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeRemoteShutdownPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeAuditPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeIncreaseQuotaPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeIncreaseBasePriorityPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeLoadDriverPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeBatchLogonRight'] = nil
default['cfg_file']['privilege_rights']['SeServiceLogonRight'] = nil
default['cfg_file']['privilege_rights']['SeInteractiveLogonRight'] = nil
default['cfg_file']['privilege_rights']['SeSecurityPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeSystemEnvironmentPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeProfileSingleProcessPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeSystemProfilePrivilege'] = nil
default['cfg_file']['privilege_rights']['SeAssignPrimaryTokenPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeRestorePrivilege'] = nil
default['cfg_file']['privilege_rights']['SeShutdownPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeTakeOwnershipPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeDenyNetworkLogonRight'] = nil
default['cfg_file']['privilege_rights']['SeDenyBatchLogonRight'] = nil
default['cfg_file']['privilege_rights']['SeDenyInteractiveLogonRight'] = nil
default['cfg_file']['privilege_rights']['SeUndockPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeManageVolumePrivilege'] = nil
default['cfg_file']['privilege_rights']['SeRemoteInteractiveLogonRight'] = nil
default['cfg_file']['privilege_rights']['SeImpersonatePrivilege'] = nil
default['cfg_file']['privilege_rights']['SeCreateGlobalPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeIncreaseWorkingSetPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeTimeZonePrivilege'] = nil
default['cfg_file']['privilege_rights']['SeCreateSymbolicLinkPrivilege'] = nil
default['cfg_file']['privilege_rights']['SeDelegateSessionUserImpersonatePrivilege'] = nil

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

# Default firewall rules
# Allow ping in
default['firewallrule']['ping']['name'] = 'Allow ICMP Inbound'
default['firewallrule']['ping']['ruleaction'] = 'Allow'
default['firewallrule']['ping']['description'] = 'Allow ICMP Inbound'
default['firewallrule']['ping']['direction'] = 'Inbound'
default['firewallrule']['ping']['enabled'] = 'True'
default['firewallrule']['ping']['group'] = 'Default rule by Chef'
default['firewallrule']['ping']['interfacetype'] = 'Any'
default['firewallrule']['ping']['localaddress'] = ''
default['firewallrule']['ping']['localport'] = 'Any'
default['firewallrule']['ping']['profile'] = 'Any'
default['firewallrule']['ping']['program'] = 'System'
default['firewallrule']['ping']['protocol'] = 'ICMPv4'
default['firewallrule']['ping']['remoteaddress'] = 'Any'
default['firewallrule']['ping']['remoteport'] = 'Any'
default['firewallrule']['ping']['service'] = ''

# Allow RDP (TCP) in
default['firewallrule']['rdp']['name'] = 'Allow RDP (TCP) Inbound'
default['firewallrule']['rdp']['ruleaction'] = 'Allow'
default['firewallrule']['rdp']['description'] = 'Allow RDP (TCP) Inbound'
default['firewallrule']['rdp']['direction'] = 'Inbound'
default['firewallrule']['rdp']['enabled'] = 'True'
default['firewallrule']['rdp']['group'] = 'Default rule by Chef'
default['firewallrule']['rdp']['interfacetype'] = 'Any'
default['firewallrule']['rdp']['localaddress'] = ''
default['firewallrule']['rdp']['localport'] = '3389'
default['firewallrule']['rdp']['profile'] = 'Any'
default['firewallrule']['rdp']['program'] = '%SystemRoot%\system32\svchost.exe'
default['firewallrule']['rdp']['protocol'] = 'TCP'
default['firewallrule']['rdp']['remoteaddress'] = 'Any'
default['firewallrule']['rdp']['remoteport'] = 'Any'
default['firewallrule']['rdp']['service'] = 'termservice'

# Allow RDP (UDP) in
default['firewallrule']['rdp']['name'] = 'Allow RDP (UDP) Inbound'
default['firewallrule']['rdp']['ruleaction'] = 'Allow'
default['firewallrule']['rdp']['description'] = 'Allow RDP (UDP) Inbound'
default['firewallrule']['rdp']['direction'] = 'Inbound'
default['firewallrule']['rdp']['enabled'] = 'True'
default['firewallrule']['rdp']['group'] = 'Default rule by Chef'
default['firewallrule']['rdp']['interfacetype'] = 'Any'
default['firewallrule']['rdp']['localaddress'] = ''
default['firewallrule']['rdp']['localport'] = '3389'
default['firewallrule']['rdp']['profile'] = 'Any'
default['firewallrule']['rdp']['program'] = '%SystemRoot%\system32\svchost.exe'
default['firewallrule']['rdp']['protocol'] = 'UDP'
default['firewallrule']['rdp']['remoteaddress'] = 'Any'
default['firewallrule']['rdp']['remoteport'] = 'Any'
default['firewallrule']['rdp']['service'] = 'termservice'