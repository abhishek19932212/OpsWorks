bash "restart_monit" do
    user "root"
    code <<-EOH
    monit restart all
    EOH
end
