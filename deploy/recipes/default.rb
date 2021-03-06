Chef::Log.level = :debug

bash "Success Running Bash" do
  user "root"
  cwd current_release
  code <<-EOH
    echo "Success Running Bash"
  EOH

end

include_recipe 'dependencies'

node[:deploy].each do |application, deploy|

  opsworks_deploy_user do
    deploy_data deploy
  end

end
