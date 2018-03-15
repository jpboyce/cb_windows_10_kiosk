# Custom Power Settings
# Monitor timeout
execute 'monitorTimeout' do
  command "powercfg /X monitor-timeout-ac #{node['power_setting']['monitor_timeout']}"
  action :run
end

# Disk Timeout
execute 'diskTimeout' do
  command "powercfg /X disk-timeout-ac #{node['power_setting']['disk_timeout']}"
  action :run
end

# Standby Timeout
execute 'standbyTimeout' do
  command "powercfg /X standby-timeout-ac #{node['power_setting']['standby_timeout']}"
  action :run
end

# Hibernate Timeout
execute 'hibernateTimeout' do
  command "powercfg /X hibernate-timeout-ac #{node['power_setting']['hibernate_timeout']}"
  action :run
end
