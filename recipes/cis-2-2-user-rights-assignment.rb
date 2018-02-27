# Windows 10 CIS Benchmark Items - Section 2.2 - User Rights Assignment


# 2.2.1 (L1) Ensure 'Access Credential Manager as a trusted caller' is set to 'No One'

# 2.2.2 (L1) Ensure 'Access this computer from the network' is set to 'Administrators, Remote Desktop Users'

# 2.2.3 (L1) Ensure 'Act as part of the operating system' is set to 'No One'

# 2.2.4 (L1) Ensure 'Adjust memory quotas for a process' is set to 'Administrators, LOCAL SERVICE, NETWORK SERVICE'

# 2.2.5 (L1) Ensure 'Allow log on locally' is set to 'Administrators, Users'

# 2.2.6 (L1) Ensure 'Allow log on through Remote Desktop Services' is set to 'Administrators, Remote Desktop Users'

# 2.2.7 (L1) Ensure 'Back up files and directories' is set to 'Administrators'

# 2.2.8 (L1) Ensure 'Change the system time' is set to 'Administrators, LOCAL SERVICE'

# 2.2.9 (L1) Ensure 'Change the time zone' is set to 'Administrators, LOCAL SERVICE, Users'

# 2.2.10 (L1) Ensure 'Create a pagefile' is set to 'Administrators'

# 2.2.11 (L1) Ensure 'Create a token object' is set to 'No One'

# 2.2.12 (L1) Ensure 'Create global objects' is set to 'Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE'

# 2.2.13 (L1) Ensure 'Create permanent shared objects' is set to 'No One'

# 2.2.14 (L1) Configure 'Create symbolic links'

# 2.2.15 (L1) Ensure 'Debug programs' is set to 'Administrators'

# 2.2.16 (L1) Ensure 'Deny access to this computer from the network' to include 'Guests, Local account'

# 2.2.17 (L1) Ensure 'Deny log on as a batch job' to include 'Guests'

# 2.2.18 (L1) Ensure 'Deny log on as a service' to include 'Guests'

# 2.2.19 (L1) Ensure 'Deny log on locally' to include 'Guests'

# 2.2.20 (L1) Ensure 'Deny log on through Remote Desktop Services' to include 'Guests, Local account'

# 2.2.21 (L1) Ensure 'Enable computer and user accounts to be trusted for delegation' is set to 'No One'

# 2.2.22 (L1) Ensure 'Force shutdown from a remote system' is set to 'Administrators'

# 2.2.23 (L1) Ensure 'Generate security audits' is set to 'LOCAL SERVICE, NETWORK SERVICE'

# 2.2.24 (L1) Ensure 'Impersonate a client after authentication' is set to 'Administrators, LOCAL SERVICE, NETWORK SERVICE, SERVICE'

# 2.2.25 (L1) Ensure 'Increase scheduling priority' is set to 'Administrators'

# 2.2.26 (L1) Ensure 'Load and unload device drivers' is set to 'Administrators'

# 2.2.27 (L1) Ensure 'Lock pages in memory' is set to 'No One'

# 2.2.28 (L2) Ensure 'Log on as a batch job' is set to 'Administrators'

# 2.2.29 (L2) Ensure 'Log on as a service' is set to 'No One'

# 2.2.30 (L1) Ensure 'Manage auditing and security log' is set to 'Administrators'

# 2.2.31 (L1) Ensure 'Modify an object label' is set to 'No One'

# 2.2.32 (L1) Ensure 'Modify firmware environment values' is set to 'Administrators'

# 2.2.33 (L1) Ensure 'Perform volume maintenance tasks' is set to 'Administrators'

# 2.2.34 (L1) Ensure 'Profile single process' is set to 'Administrators'

# 2.2.35 (L1) Ensure 'Profile system performance' is set to 'Administrators, NT SERVICE\WdiServiceHost'

# 2.2.36 (L1) Ensure 'Replace a process level token' is set to 'LOCAL SERVICE, NETWORK SERVICE'

# 2.2.37 (L1) Ensure 'Restore files and directories' is set to 'Administrators'

# 2.2.38 (L1) Ensure 'Shut down the system' is set to 'Administrators, Users'

# 2.2.39 (L1) Ensure 'Take ownership of files or other objects' is set to 'Administrators'

# default['security_policy']['rights']['SeRemoteInteractiveLogonRight'] = '*S-1-5-32-544'
