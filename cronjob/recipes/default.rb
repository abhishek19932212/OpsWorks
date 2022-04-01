script "Run a script" do
  interpreter "bash"
  code <<-EOH
     service monit restart
  EOH
end
