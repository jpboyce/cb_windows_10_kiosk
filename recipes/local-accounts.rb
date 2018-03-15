# Local account management

# Create account
user 'kiosk' do
    action :create
    username node['cb_windows_10_kiosk']['account']['username']
    password node['cb_windows_10_kiosk']['account']['password']
    comment node['cb_windows_10_kiosk']['account']['description']
end

# Add to defined groups
node['cb_windows_10_kiosk']['account']['groups'].each do |i|
    group i do
        action :modify
        members node['cb_windows_10_kiosk']['account']['username']
        append true
    end
end

# Set password never expires
# NET USER <user> /EXPIRES:NEVER
execute 'password_never_expires' do
    command "NET USER #{node['cb_windows_10_kiosk']['account']['username']} /EXPIRES:NEVER"
    action :run
end

# set user can't change password
# NET USER <user> /PASSWORDCHG:NO
execute 'user_cant_change_password' do
    command "NET USER #{node['cb_windows_10_kiosk']['account']['username']} /PASSWORDCHG:NO"
    action :run
end
