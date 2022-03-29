include_recipe "opsworks_agent_monit::service"

service "monit" do
  action :restart
end
