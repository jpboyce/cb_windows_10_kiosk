# Windows 10 CIS Benchmark Items - Section 1.2 Accout Lockout Policy

# Ensure 'Account lockout duration' is set to '15 or more minute(s)'
security_policy 'Account lockout duration' do
  policy_template "#{node['secedit']['template']['location']}\\Account lockout duration.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# Ensure 'Account lockout threshold' is set to '10 or fewer invalid logon attempt(s), but not 0'
security_policy 'Account lockout threshold' do
  policy_template "#{node['secedit']['template']['location']}\\Account lockout threshold.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end

# Ensure 'Reset account lockout counter after' is set to '15 or more minute(s)'
security_policy 'Reset account lockout counter after' do
  policy_template "#{node['secedit']['template']['location']}\\Reset account lockout counter after.inf}"
  database "#{node['secedit']['database']['location']}\\#{['secedit']['database']['name']}"
  action :configure
end
