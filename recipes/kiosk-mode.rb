# Kiosk Mode items

# Copy Kiosk mode shell command file
cookbook_file 'c:\kiosk-shell.bat' do
    source 'kiosk-shell.bat'

end

# Turn on Shell Launcher Feature
windows_feature "Client-EmbeddedShellLauncher" do
  action :install
  all true
  notifies :run, 'powershell_script[Enable Kiosk Mode]', :immediately
end

# Enable Kiosk mode for Kiosk account
# Enable Kiosk Mode
powershell_script 'Enable Kiosk Mode' do
  ignore_failure true
  code <<-EOH
Start-Transcript
# Check if shell launcher license is enabled
function Check-ShellLauncherLicenseEnabled
{
[string]$source = @"
using System;
using System.Runtime.InteropServices;

static class CheckShellLauncherLicense
{
    const int S_OK = 0;

    public static bool IsShellLauncherLicenseEnabled()
    {
        int enabled = 0;
        if (NativeMethods.SLGetWindowsInformationDWORD("EmbeddedFeature-ShellLauncher-Enabled", out enabled) != S_OK) {
            enabled = 0;
        }
        return (enabled != 0);
    }

    static class NativeMethods
    {
        [DllImport("Slc.dll")]
        internal static extern int SLGetWindowsInformationDWORD([MarshalAs(UnmanagedType.LPWStr)]string valueName, out int value);
    }

}
"@

$type = Add-Type -TypeDefinition $source -PassThru
return $type[0]::IsShellLauncherLicenseEnabled()
}

[bool]$result = $false

$result = Check-ShellLauncherLicenseEnabled
"`nShell Launcher license enabled is set to " + $result
if (-not($result))
{
    "`nThis device doesn't have required license to use Shell Launcher"
    exit
}

$COMPUTER = "localhost"
$NAMESPACE = "root\\standardcimv2\\embedded"

# Create a handle to the class instance so we can call the static methods.
try {
    $ShellLauncherClass = [wmiclass]"\\\\$COMPUTER\\${NAMESPACE}:WESL_UserSetting"
    } catch [Exception] {
    write-host $_.Exception.Message;
    write-host "Make sure Shell Launcher feature is enabled"
    exit
    }

# This well-known security identifier (SID) corresponds to the BUILTIN\Administrators group.
$Admins_SID = "S-1-5-32-544"

# Create a function to retrieve the SID for a user account on a machine.
Function Get-UsernameSID($AccountName) {
  $NTUserObject = New-Object System.Security.Principal.NTAccount($AccountName)
  $NTUserSID = $NTUserObject.Translate([System.Security.Principal.SecurityIdentifier])
  return $NTUserSID.Value
}

# Get the SID for a user account named "Kiosk"
$Kiosk_SID = Get-UsernameSID("#{node['account']['kiosk']['username']}")

# Define actions to take when the shell program exits.
$restart_shell = 0
$restart_device = 1
$shutdown_device = 2

# Set Internet Explorer as the shell for "Kiosk", and restart the machine if Internet Explorer is closed.
$ShellLauncherClass.SetCustomShell($Kiosk_SID, "c:\\kiosk-shell.bat", ($null), ($null), $restart_device)

# Set Explorer as the shell for administrators.
$ShellLauncherClass.SetCustomShell($Admins_SID, "explorer.exe")

# Enable Shell Launcher
$ShellLauncherClass.SetEnabled($TRUE)
Stop-Transcript
EOH
end

# Turn on Keyboard Filter Feature
windows_feature "Client-KeyboardFilter" do
  action :install
  all true
end
