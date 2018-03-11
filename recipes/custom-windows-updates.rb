# Custom Windows Updates

# Windows Updates Registry keys

# Automatic Updates is enabled
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' do
  values [{
    name: 'NoAutoUpdate',
    type: :dword,
    data: 0,
  }]
  action :create
  recursive true
end

# Automatically download and scheduled installation
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' do
  values [{
    name: 'AUOptions',
    type: :dword,
    data: 4,
  }]
  action :create
  recursive true
end

# Scheduled for every day
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' do
  values [{
    name: 'ScheduledInstallDay',
    type: :dword,
    data: 0,
  }]
  action :create
  recursive true
end

# Install at 2AM
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' do
  values [{
    name: 'ScheduledInstallTime',
    type: :dword,
    data: 2,
  }]
  action :create
  recursive true
end

# Use WSUS Server - Disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' do
  values [{
    name: 'UseWUServer',
    type: :dword,
    data: 0,
  }]
  action :create
  recursive true
end

# time period to wait between the time Automatic Updates starts and the time it begins installations where the scheduled times have passed
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' do
  values [{
    name: 'RescheduleWaitTime',
    type: :dword,
    data: 5,
  }]
  action :create
  recursive true
end

# Automatic Updates does not automatically restart a computer while users are logged on
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' do
  values [{
    name: 'NoAutoRebootWithLoggedOnUsers',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# WSUS Server
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'WUServer',
    type: :string,
    data: '',
  }]
  action :create
  recursive true
end

# WSUS Status Server
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'WUStatusServer',
    type: :string,
    data: '',
  }]
  action :create
  recursive true
end

# Windows 10 Settings

# Feature Update Deferral
# 1 = enable, 0 = disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'DeferFeatureUpdates',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Branch Readiness
# 16 = Current Branch/Release Ready, 32 = CBB/Business Ready
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'BranchReadinessLevel',
    type: :dword,
    data: 32,
  }]
  action :create
  recursive true
end

# Days to defer Feature Updates
# 0-365 days
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'DeferFeatureUpdatesPeriodInDays',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Pause Feature Updates Start Time
# Max lenght = 10?
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'PauseFeatureUpdatesStartTime',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Defer Quality Updates
# 1 = enable, 0 = disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'DeferQualityUpdates',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Days to defer quality updates
# 0-365 days
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'DeferQualityUpdatesPeriodInDays',
    type: :dword,
    data: 30,
  }]
  action :create
  recursive true
end

# Pause Quality Updates Start time
# Max length = 10?
# Days to defer quality updates
# 0-365
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'PauseQualityUpdatesStartTime',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Exclude Drivers
# 1=enable, 0=disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'ExcludeWUDriversInQualityUpdate',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Active Hours
# 1=Enable, 0=Disable
# Enable prevents the PC restarting during active hours
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'SetActiveHours',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Active Hours - Start
# 0-23
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'ActiveHoursStart',
    type: :dword,
    data: 8,
  }]
  action :create
  recursive true
end

# Active Hours - End
# 0-23
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'ActiveHoursEnd',
    type: :dword,
    data: 18,
  }]
  action :create
  recursive true
end

# Auto Restart Deadline
# 1=Enable, 0=Disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'SetAutoRestartDeadline',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Auto Restart Deadline - Days
# 2-30?
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'AutoRestartDeadlinePeriodInDays',
    type: :dword,
    data: 7,
  }]
  action :create
  recursive true
end

# Disable UXWU Access
# 1=enable, 0=disable
# If you enable this setting user access to Windows Update scan, download and install is removed.
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'SetDisableUXWUAccess',
    type: :dword,
    data: 0,
  }]
  action :create
  recursive true
end

# Active Hours Max Range
# 1=enable, 0=disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'SetActiveHoursMaxRange',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Active Hours Max Range - number
# 8-18
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'ActiveHoursMaxRange',
    type: :dword,
    data: 16,
  }]
  action :create
  recursive true
end

# Auto Restart Required Notoficiation Dismissal?
# 1=enable, 0=disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'SetAutoRestartRequiredNotificationDismissal',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# Auto Restart Notification Config?
# 1=auto, 2 - User Action
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'SetAutoRestartNotificationConfig',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# AutoRestartNotificationSchedule
# 15, 30, 60, 120, 240
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'AutoRestartNotificationSchedule',
    type: :dword,
    data: 60,
  }]
  action :create
  recursive true
end

# AutoRestartNotificationDisable
# 1=enabled, 0=disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'AutoRestartNotificationDisable',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# SetRestartWarningSchd
# 1=enabled, 0=disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'SetRestartWarningSchd',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end


# ScheduleRestartWarning
# 2, 4, 8, 12, 24 hours
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'ScheduleRestartWarning',
    type: :dword,
    data: 12,
  }]
  action :create
  recursive true
end

# ScheduleImminentRestartWarning
# 15, 30, 60
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'ScheduleImminentRestartWarning',
    type: :dword,
    data: 60,
  }]
  action :create
  recursive true
end

# SetEngagedRestartTransitionSchedule
# 1=enabled, 0=disable
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'SetEngagedRestartTransitionSchedule',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# EngagedRestartTransitionSchedule
# 2-30 days
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'EngagedRestartTransitionSchedule',
    type: :dword,
    data: 7,
  }]
  action :create
  recursive true
end

# EngagedRestartSnoozeSchedule
# 1,2,3
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'EngagedRestartSnoozeSchedule',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# EngagedRestartDeadline
# 0-30
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' do
  values [{
    name: 'EngagedRestartDeadline',
    type: :dword,
    data: 7,
  }]
  action :create
  recursive true
end

# Windows 10 - Delivery Optimisation

# DODownloadMode
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DODownloadMode',
    type: :dword,
    data: 100,
  }]
  action :create
  recursive true
end

# DOGroupId
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOGroupId',
    type: :dword,
    data: 0,
  }]
  action :create
  recursive true
end

# DOMaxUploadBandwidth
# 0 - 4000000
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOMaxUploadBandwidth',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOMaxCacheSize
# 0 - 100
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOMaxCacheSize',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOAbsoluteMaxCacheSize
# 0 - 4294967295
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOAbsoluteMaxCacheSize',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOMaxCacheAge
# 0 - 4294967295
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOMaxCacheAge',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOMonthlyUploadDataCap
# 0 - 4294967295
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOMonthlyUploadDataCap',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOMinBackgroundQos
# 1 - 4294967295
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOMinBackgroundQos',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOMaxDownloadBandwidth
# 0 - 4294967295
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOMaxDownloadBandwidth',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# PercentageMaxDownloadBandwidth
# 0 - 100
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'PercentageMaxDownloadBandwidth',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOMinFileSizeToCache
# 1 - 100000
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOMinFileSizeToCache',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOAllowVPNPeerCaching
# 0/1
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOAllowVPNPeerCaching',
    type: :dword,
    data: 0,
  }]
  action :create
  recursive true
end

# MinRAMAllowedToPeer
# 1 - 100000
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'MinRAMAllowedToPeer',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# MinDiskSizeAllowedToPeer
# 1 - 100000
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'MinDiskSizeAllowedToPeer',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end

# DOMinBatteryPercentageAllowedToUpload
# 0 - 100
registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization' do
  values [{
    name: 'DOMinBatteryPercentageAllowedToUpload',
    type: :dword,
    data: 1,
  }]
  action :create
  recursive true
end
