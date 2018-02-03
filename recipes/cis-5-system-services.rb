# Windows 10 CIS Benchmark Items - Section 5 - System Services

# Service template to stop and disable a service
# windows_service 'servicename' do
#    action [:stop, :disable]
# xend

# if CIS Level 1 is set to yes, then we apply the items
if node['cis']['level']['1'] == 'yes'
    # apply level 1 items
    node['cis-5']['level1']['services'].each do |i|
        if ::Win32::Service.exists?(i)
            # check if the service actually exists first so we don't generate errors
            windows_service i do
                action [:stop, :disable]
            end
        end
    end
end

# if CIS Level 2 is set to yes, then we apply the items
if node['cis']['level']['2'] == 'yes'
    # apply level 2 items
    node['cis-5']['level1']['services'].each do |i|
        if ::Win32::Service.exists?(i)
            # check if the service actually exists first so we don't generate errors
            windows_service i do
                action [:stop, :disable]
            end
        end
    end
end
