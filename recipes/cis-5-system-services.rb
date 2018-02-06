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
            Chef::Log.warn("Checking if service #{i} has any dependencies")
            # Have to do this code because it seems that Chef can only see dependencies in one direction, to the parents (items that the current one is dependent on)
            # What we really need are the children (items that are dependent on the current one) so we can turn them off first
            powershell_script 'DependencyCheck' do
                code <<-EOH
                    Start-Transcript -Verbose
                    $serviceList = (Get-Service -Name #{i} | Select DependentServices).DependentServices
                    if( ($serviceList.count) -gt 0) {
                        Write-Warning "Dependent services have been found, going to brute force stop them..."
                        foreach($item in $serviceList){
                            Write-Warning "Attempting to stop service $($item.Name)"
                            Get-Service $item.Name | Stop-Service -Force -Verbose
                        }
                    }
                    Stop-Transcript -Verbose
                EOH
            end
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
