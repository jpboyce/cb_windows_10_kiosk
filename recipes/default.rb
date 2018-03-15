#
# Cookbook:: cb_windows_10_kiosk
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

Chef::Log.warn("Confirming platform details...")

# Chef::Log.warn("Platform Family is: #{node['platform_family']}")
# Chef::Log.warn("Platform is: #{node['platform']}")
# Chef::Log.warn("Platform version is: #{node['platform_version']}")
# if ::Windows::VersionHelper.workstation_version? node
#  Chef::Log.warn("This is a workstation version of Windows")
# end
# if ::Windows::VersionHelper.nt_version(node) == 10.0
#  Chef::Log.warn("This node is running Windows 10, continuing processing...")
# else
#  Chef::Log.warn("This node is not running WIndows 10!")
# end
# Chef::Log.warn("Windows version is #{::Windows::VersionHelper.nt_version node}")
# 15063
if node['platform_version'] == '10.0.14393'
  Chef::Log.warn("This node is running Anniversary Update (1607), able to proceed")
# Include CIS Recipes
# include_recipe 'cb_windows_10_kiosk::cis-1-1-password-policy'
# include_recipe 'cb_windows_10_kiosk::cis-1-2-account-lockout-policy'
# include_recipe 'cb_windows_10_kiosk::cis-17-1-audit-policy-account-logon'
# include_recipe 'cb_windows_10_kiosk::cis-17-2-audit-policy-account-management'
# include_recipe 'cb_windows_10_kiosk::cis-17-3-audit-policy-detailed-tracking'
# include_recipe 'cb_windows_10_kiosk::cis-17-5-audit-policy-logon-logoff'
# include_recipe 'cb_windows_10_kiosk::cis-17-6-audit-policy-object-access'
# include_recipe 'cb_windows_10_kiosk::cis-17-7-audit-policy-policy-change'
# include_recipe 'cb_windows_10_kiosk::cis-17-8-audit-policy-privilege-use'
# include_recipe 'cb_windows_10_kiosk::cis-17-9-audit-policy-system'
# include_recipe 'cb_windows_10_kiosk::cis-18-1-admin-templates-computer-control-panel'
# include_recipe 'cb_windows_10_kiosk::cis-18-2-admin-templates-computer-laps'
# include_recipe 'cb_windows_10_kiosk::cis-18-3-admin-templates-computer-ms-security-guide'
# include_recipe 'cb_windows_10_kiosk::cis-18-4-admin-templates-computer-mss-legacy'
# include_recipe 'cb_windows_10_kiosk::cis-18-5-admin-templates-computer-network'
# include_recipe 'cb_windows_10_kiosk::cis-18-8-admin-templates-computer-system'
# include_recipe 'cb_windows_10_kiosk::cis-18-9-admin-templates-computer-windows-components'
# include_recipe 'cb_windows_10_kiosk::cis-19-1-admin-templates-user-control-panel'
# include_recipe 'cb_windows_10_kiosk::cis-19-5-admin-templates-user-startmenu-taskbar'
# include_recipe 'cb_windows_10_kiosk::cis-19-6-admin-templates-user-system'
# include_recipe 'cb_windows_10_kiosk::cis-19-7-admin-templates-user-windows-components'
# include_recipe 'cb_windows_10_kiosk::cis-2-2-user-rights-assignment'
# include_recipe 'cb_windows_10_kiosk::cis-2-3-security-options'
# include_recipe 'cb_windows_10_kiosk::cis-5-system-services'
# include_recipe 'cb_windows_10_kiosk::cis-9-1-windows-firewall-domain-profile'
# include_recipe 'cb_windows_10_kiosk::cis-9-2-windows-firewall-private-profile'
# include_recipe 'cb_windows_10_kiosk::cis-9-3-windows-firewall-public-profile'

# Account Management
include_recipe 'cb_windows_10_kiosk::local-accounts'

# Power Management
#include_recipe 'cb_windows_10_kiosk::custom-power-settings'

# Kiosk Mode
include_recipe 'cb_windows_10_kiosk::kiosk-mode'

else
  Chef::Log.error("This node is not running the correct OS version!")
end
