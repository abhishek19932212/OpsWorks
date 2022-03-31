include_recipe 'dependencies'

node[:deploy].each do |application, deploy|

  opsworks_deploy_user do
    deploy_data deploy
  end

end

file "Create a file" do
  content "<%= node[:ssh][:deployssh] %>"
  group "www-data"
  mode "0755"
  owner "deploy"
  path "/home/deploy/.ssh/id_ecdsa"
end
