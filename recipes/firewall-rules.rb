# Standard Firewall rules
# This will do some basic allow rules

# Allow Ping
windows_firwall_rule 'Allow ICMP Inbound' do
  name 'Allow ICMP Inbound'
  description 'Standard Rule by Chef - Allow ICMP Inbound'
  localip 'any'
  localport 'any'
  remoteip 'any'
  remoteport 'any'
  dir 'in'
  protocol 'icmpv4'
  firewall_action 'allow'
  profile 'any'
  program 'any'
  service 'any'
  interface_type 'any'
end

# Allow RDP In (TCP)
windows_firwall_rule 'Allow RDP (TCP) Inbound' do
  name 'Allow RDP (TCP) Inbound'
  description 'Standard Rule by Chef - Allow RDP (TCP) Inbound'
  localip 'any'
  localport '3389'
  remoteip 'any'
  remoteport 'any'
  dir 'in'
  protocol 'tcp'
  firewall_action 'allow'
  profile 'any'
  program '%SystemRoot%\system32\svchost.exe'
  service 'termservice'
  interface_type 'any'
end

# Allow RDP In (UDP)
windows_firwall_rule 'Allow RDP (UDP) Inbound' do
  name 'Allow RDP (UDP) Inbound'
  description 'Standard Rule by Chef - Allow RDP (UDP) Inbound'
  localip 'any'
  localport '3389'
  remoteip 'any'
  remoteport 'any'
  dir 'in'
  protocol 'udp'
  firewall_action 'allow'
  profile 'any'
  program '%SystemRoot%\system32\svchost.exe'
  service 'termservice'
  interface_type 'any'
end
