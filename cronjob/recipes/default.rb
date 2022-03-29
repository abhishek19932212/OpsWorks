bash "restart_monit" do
    user "root"
    cwd "/tmp"
    code <<-EOH
    monit start all
    end
  end