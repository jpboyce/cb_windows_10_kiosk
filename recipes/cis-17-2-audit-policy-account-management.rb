# Windows 10 CIS Benchmark Items - Section 17.2 - Advanced Audit Policy, Account Management

# 17.2.1 (L1) Ensure 'Audit Application Group Management' is set to 'Success and Failure'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end

# 17.2.2 (L1) Ensure 'Audit Computer Account Management' is set to 'Success and Failure'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end

# 17.2.3 (L1) Ensure 'Audit Other Account Management Events' is set to 'Success and Failure'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end

# 17.2.4 (L1) Ensure 'Audit Security Group Management' is set to 'Success and Failure'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end

# 17.2.5 (L1) Ensure 'Audit User Account Management' is set to 'Success and Failure'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end
