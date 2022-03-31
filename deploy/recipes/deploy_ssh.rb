file "Create a file" do
  content "<%= node[:ssh][:deployssh] %>"
  group "www-data"
  mode "0600"
  owner "deploy"
  path "/home/deploy/.ssh/id_ecdsa"
end
