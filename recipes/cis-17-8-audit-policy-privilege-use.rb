# Windows 10 CIS Benchmark Items - Section 17.9 - Advanced Audit Policy, System

# 17.8.1 (L1) Ensure 'Audit Sensitive Privilege Use' is set to 'Success and Failure'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end
