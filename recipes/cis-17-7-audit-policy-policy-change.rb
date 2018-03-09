# Windows 10 CIS Benchmark Items - Section 17.7 - Advanced Audit Policy, Policy Change

# 17.7.1 (L1) Ensure 'Audit Audit Policy Change' is set to 'Success and Failure'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end

# 17.7.2 (L1) Ensure 'Audit Authentication Policy Change' is set to 'Success'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end

# 17.7.3 (L1) Ensure 'Audit Authorization Policy Change' is set to 'Success'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end
