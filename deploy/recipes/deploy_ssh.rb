file "Create a file" do
  source "templates/default/id_ecdsa.erb"
  group "www-data"
  mode "0600"
  owner "deploy"
  path "/home/deploy/.ssh/id_ecdsa"
end
