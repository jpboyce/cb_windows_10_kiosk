# Windows Firewall resource

resource_name :firewallrule
property :displayname, String, required: false              # Rule field: DisplayName
property :ruleaction, String, required: false               # Rule field: Action (NotConfigured, Allow, Block)
property :description, String, required: false              # Rule field: Description
property :direction, String, required: false                # Rule field: Direction (Inbound, Outbound)
property :enabled, String, required: false                  # Rule field: Enabled (True, False)
property :group, String, required: false                    # Rule field: Group
property :interfacetype, String, required: false            # Rule field: InterfaceType (Any, Wired, Wireless, RemoteAccess)
property :localaddress, String, required: false             # Rule field: LocalAddress (IP address, subnet etc)
property :localport, String, required: false                # Rule field: LocalPort (Port number, range, keyword, etc)
property :profile, String, required: false                  # Rule field: Profile (Any, Domain, Private, Public, NotApplicable)
property :program, String, required: false                  # Rule field: Program (path & filename of program)
property :protocol, String, required: false                 # Rule field: Protocol (by number or name, ie. TCP, UDP)
property :remoteaddress, String, required: false            # Rule field: RemoteAddress  (IP address, subnet etc)
property :remoteport, String, required: false               # Rule field: RemoteAddress  (IP address, subnet etc)
property :service, String, required: false                  # Rule field: Service (short name of a Windows service)

action :create do
  # Powershell command is - New-NetFirewallRule

end
