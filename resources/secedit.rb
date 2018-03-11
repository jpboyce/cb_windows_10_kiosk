# # Secedit resource for doing actions via the secedit.exe program
#
# resource_name :secedit
# property :template, String, required: false, default: ''
# property :database, String, required: false, default: ''
# property :log, String, default: ''
#
# action :configure do
#     if node['platform'] == 'windows'
#         template "#{template}" do
#             source ''
#             cookbook 'cb-windows-10-kiosk'
#             action :create
#         end
#
#         execute 'Configure security database' do
#           command "secedit.exe /configure /db #{database} /cfg #{template} /log #{log}"
#           live_stream true
#           action :run
#         end
#     else
#         Chef::Log.info "#{@current_resource} is only for a Windows platform"
#     end
# end
#
