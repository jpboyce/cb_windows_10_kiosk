# Local account management

# Create account
user 'kiosk' do
    action :create
    username node['account']['kiosk']['username']
    password node['account']['kiosk']['password']
    comment node['account']['kiosk']['description']
end

# Add to defined groups
node['account']['kiosk']['groups'].each do |i|
    group i do
        action :modify
        members "#{node['account']['kiosk']['username']}"
        append true
    end
end

# Set password never expires
# NET USER <user> /EXPIRES:NEVER
execute 'password_never_expires' do
    command "NET USER #{node['account']['kiosk']['username']} /EXPIRES:NEVER"
    action :run
end

# set user can't change password
# NET USER <user> /PASSWORDCHG:NO
execute 'user_cant_change_password' do
    command "NET USER #{node['account']['kiosk']['username']} /PASSWORDCHG:NO"
    action :run
end