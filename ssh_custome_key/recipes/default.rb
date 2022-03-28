#
# Cookbook Name:: copperegg_custom
# Recipe:: default
#

if platform?('redhat', 'centos', 'fedora', 'ubuntu', 'debian', 'amazon')
 
  template '/tmp/config_change.sh' do
    owner 'root'
    group 'root'
    source 'config_change.sh.erb'
    mode 0554
    action :create
  end

  script 'config_change' do
    interpreter 'bash'
    cwd
    user 'root'
    code <<-EOH
        /tmp/config_change.sh #{node['copperegg_custom']['apikey']} #{node['copperegg_custom']['www']} >> /tmp/config_change.log 2>&1
    EOH
    action :run
    only_if { !::File.exists?("/home/deploy/.ssh/config") } 
  end

end
