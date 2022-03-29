bash "restart_monit" do
    user "root"
    code <<-EOH
    monit start all
    EOH
end
