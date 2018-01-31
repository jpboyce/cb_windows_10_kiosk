# Password Policy settings

default['password_policy']['password_history'] = 24



default['security_policy']['access']['PasswordComplexity'] = 1



security_policy 'Local Policy' do
  policy_template "#{node['security_policy']['template']['location']}\\mySecurityPolicy.inf"
  database "#{node['security_policy']['database']['location']}\\#{node['security_policy']['database']['name']}"
  action :configure
end