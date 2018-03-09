# Windows 10 CIS Benchmark Items - Section 17.6 - Advanced Audit Policy, Object Access

# 17.6.1 (L1) Ensure 'Audit Removable Storage' is set to 'Success and Failure'
=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end
