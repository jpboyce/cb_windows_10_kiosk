# Custom Windows Firewall Rules
# Rules to apply once the CIS rules are applied

=begin
# Allow Ping
  windows_firwall_rule 'Allow ICMP Inbound' do
  name 'Allow ICMP Inbound'
  description 'Standard Rule by Chef - Allow ICMP Inbound'
  localip 'any'
  localport 'any'
  remoteip 'any'
  remoteport 'any'
  dir in
  protocol 'icmpv4'
  firewall_action 'allow'
  profile 'any'
  program 'any'
  service 'any'
  interface_type 'any'
end
=end
