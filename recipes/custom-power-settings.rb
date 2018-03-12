# Custom Power Settings
# Monitor timeout
execute 'monitor-timeout-ac' do
  command "powercfg /X monitor-timeout-ac #{node['power_settings']['active_plan']['monitor_timeout']}"
  action :run
end

# Disk Timeout
execute 'disk-timeout-ac' do
  command "powercfg /X disk-timeout-ac #{node['power_settings']['active_plan']['disk_timeout']}"
  action :run
end

# Standby Timeout
execute 'standby-timeout-ac' do
  command "powercfg /X standby-timeout-ac #{node['power_settings']['active_plan']['standby_timeout']}"
  action :run
end

# Hibernate Timeout
execute 'hibernate-timeout-ac' do
  command "powercfg /X hibernate-timeout-ac #{node['power_settings']['active_plan']['hibernate_timeout']}"
  action :run
end

