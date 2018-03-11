# Windows 10 CIS Benchmark Items - Section 2.2 - User Rights Assignment

# 2.2.1 (L1) Ensure 'Access Credential Manager as a trusted caller' is set to 'No One'
security_policy 'Access Credential Manager' do
  policy template "#{node['secedit']['template']['location']}\\Access Credential Manager.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.2 (L1) Ensure 'Access this computer from the network' is set to 'Administrators, Remote Desktop Users'
security_policy 'Access this computer from the network' do
  policy template "#{node['secedit']['template']['location']}\\Access this computer from the network.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.3 (L1) Ensure 'Act as part of the operating system' is set to 'No One'
security_policy 'Act as part of the operating system' do
  policy template "#{node['secedit']['template']['location']}\\Act as part of the operating system.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.4 (L1) Ensure 'Adjust memory quotas for a process' is set to 'Administrators, LOCAL SERVICE, NETWORK SERVICE'
security_policy 'Adjust memory quotas for a process' do
  policy template "#{node['secedit']['template']['location']}\\Adjust memory quotas for a process.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.5 (L1) Ensure 'Allow log on locally' is set to 'Administrators, Users'
security_policy 'Allow log on locally' do
  policy template "#{node['secedit']['template']['location']}\\Allow log on locally.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.6 (L1) Ensure 'Allow log on through Remote Desktop Services' is set to 'Administrators, Remote Desktop Users'
security_policy 'Allow log on through Remote Desktop Service' do
  policy template "#{node['secedit']['template']['location']}\\Allow log on through Remote Desktop Service.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.7 (L1) Ensure 'Back up files and directories' is set to 'Administrators'
security_policy 'Back up files and directories' do
  policy template "#{node['secedit']['template']['location']}\\Back up files and directories.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.8 (L1) Ensure 'Change the system time' is set to 'Administrators, LOCAL SERVICE'
security_policy 'Change the system time' do
  policy template "#{node['secedit']['template']['location']}\\Change the system time.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.9 (L1) Ensure 'Change the time zone' is set to 'Administrators, LOCAL SERVICE, Users'
security_policy 'Change the time zone' do
  policy template "#{node['secedit']['template']['location']}\\Change the time zone.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.10 (L1) Ensure 'Create a pagefile' is set to 'Administrators'
security_policy 'Create a pagefile' do
  policy template "#{node['secedit']['template']['location']}\\Create a pagefile.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.11 (L1) Ensure 'Create a token object' is set to 'No One'
security_policy 'Create a token object' do
  policy template "#{node['secedit']['template']['location']}\\Create a token object.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.12 (L1) Ensure 'Create global objects' is set to 'Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE'
security_policy 'Create global objects' do
  policy template "#{node['secedit']['template']['location']}\\Create global objects.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.13 (L1) Ensure 'Create permanent shared objects' is set to 'No One'
security_policy 'Create permanent shared objects' do
  policy template "#{node['secedit']['template']['location']}\\Create permanent shared objects.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.14 (L1) Configure 'Create symbolic links'
security_policy 'Create symbolic links' do
  policy template "#{node['secedit']['template']['location']}\\Create symbolic links.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.15 (L1) Ensure 'Debug programs' is set to 'Administrators'
security_policy 'Debug programs' do
  policy template "#{node['secedit']['template']['location']}\\Debug programs.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.16 (L1) Ensure 'Deny access to this computer from the network' to include 'Guests, Local account'
security_policy 'Deny access to this computer from the network' do
  policy template "#{node['secedit']['template']['location']}\\Deny access to this computer from the network.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.17 (L1) Ensure 'Deny log on as a batch job' to include 'Guests'
security_policy 'Deny log on as a batch job' do
  policy template "#{node['secedit']['template']['location']}\\Deny log on as a batch job.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.18 (L1) Ensure 'Deny log on as a service' to include 'Guests'
security_policy 'Deny log on as a service' do
  policy template "#{node['secedit']['template']['location']}\\Deny log on as a service.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.19 (L1) Ensure 'Deny log on locally' to include 'Guests'
security_policy 'Deny log on locally' do
  policy template "#{node['secedit']['template']['location']}\\Deny log on locally.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.20 (L1) Ensure 'Deny log on through Remote Desktop Services' to include 'Guests, Local account'
security_policy 'Deny log on through Remote Desktop Services' do
  policy template "#{node['secedit']['template']['location']}\\Deny log on through Remote Desktop Services.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.21 (L1) Ensure 'Enable computer and user accounts to be trusted for delegation' is set to 'No One'
security_policy 'Enable computer and user accounts to be trusted for delegation' do
  policy template "#{node['secedit']['template']['location']}\\Enable computer and user accounts to be trusted for delegation.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.22 (L1) Ensure 'Force shutdown from a remote system' is set to 'Administrators'
security_policy 'Force shutdown from a remote system' do
  policy template "#{node['secedit']['template']['location']}\\Force shutdown from a remote system.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.23 (L1) Ensure 'Generate security audits' is set to 'LOCAL SERVICE, NETWORK SERVICE'
security_policy 'Generate security audits' do
  policy template "#{node['secedit']['template']['location']}\\Generate security audits.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.24 (L1) Ensure 'Impersonate a client after authentication' is set to 'Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE'
security_policy 'Impersonate a client after authenticatio' do
  policy template "#{node['secedit']['template']['location']}\\Impersonate a client after authenticatio.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.25 (L1) Ensure 'Increase scheduling priority' is set to 'Administrators'
security_policy 'Increase scheduling priority' do
  policy template "#{node['secedit']['template']['location']}\\Increase scheduling priority.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.26 (L1) Ensure 'Load and unload device drivers' is set to 'Administrators'
security_policy 'Load and unload device drivers' do
  policy template "#{node['secedit']['template']['location']}\\Load and unload device drivers.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.27 (L1) Ensure 'Lock pages in memory' is set to 'No One'
security_policy 'Lock pages in memory' do
  policy template "#{node['secedit']['template']['location']}\\Lock pages in memory.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.28 (L2) Ensure 'Log on as a batch job' is set to 'Administrators'
security_policy 'Log on as a batch job' do
  policy template "#{node['secedit']['template']['location']}\\Log on as a batch job.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.29 (L2) Ensure 'Log on as a service' is set to 'No One'
security_policy 'Log on as a service' do
  policy template "#{node['secedit']['template']['location']}\\Log on as a service.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.30 (L1) Ensure 'Manage auditing and security log' is set to 'Administrators'
security_policy 'Manage auditing and security log' do
  policy template "#{node['secedit']['template']['location']}\\Manage auditing and security log.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.31 (L1) Ensure 'Modify an object label' is set to 'No One'
security_policy 'Modify an object label' do
  policy template "#{node['secedit']['template']['location']}\\Modify an object label.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.32 (L1) Ensure 'Modify firmware environment values' is set to 'Administrators'
security_policy 'Modify firmware environment values' do
  policy template "#{node['secedit']['template']['location']}\\Modify firmware environment values.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.33 (L1) Ensure 'Perform volume maintenance tasks' is set to 'Administrators'
security_policy 'Perform volume maintenance tasks' do
  policy template "#{node['secedit']['template']['location']}\\Perform volume maintenance tasks.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.34 (L1) Ensure 'Profile single process' is set to 'Administrators'
security_policy 'Profile single process' do
  policy template "#{node['secedit']['template']['location']}\\Profile single process.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.35 (L1) Ensure 'Profile system performance' is set to 'Administrators, NT SERVICE\WdiServiceHost'
security_policy 'Profile system performance' do
  policy template "#{node['secedit']['template']['location']}\\Profile system performance.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.36 (L1) Ensure 'Replace a process level token' is set to 'LOCAL SERVICE, NETWORK SERVICE'
security_policy 'Replace a process level token' do
  policy template "#{node['secedit']['template']['location']}\\Replace a process level token.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.37 (L1) Ensure 'Restore files and directories' is set to 'Administrators'
security_policy 'Restore files and directories' do
  policy template "#{node['secedit']['template']['location']}\\Restore files and directories.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.38 (L1) Ensure 'Shut down the system' is set to 'Administrators, Users'
security_policy 'Shut down the system' do
  policy template "#{node['secedit']['template']['location']}\\Shut down the system.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# 2.2.39 (L1) Ensure 'Take ownership of files or other objects' is set to 'Administrators'
security_policy 'Take ownership of files or other objects' do
  policy template "#{node['secedit']['template']['location']}\\Take ownership of files or other objects.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end
