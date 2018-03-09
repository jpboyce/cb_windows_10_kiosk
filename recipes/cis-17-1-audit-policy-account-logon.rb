# Windows 10 CIS Benchmark Items - Section # 17.1 - Advanced Audit Policy, Account Logon

# 17.1.1 (L1) Ensure 'Audit Credential Validation' is set to 'Success and Failure'

=begin
# AuditPol execute block
execute 'name' do
  command 'auditpol /set /subcategory:{GUID}|SubCatName /success:enable|disable /failure:enable|disable'
  action :run
end
=end
