write_host_key(:path => '/etc/ssh/id_ecdsa', :content => node['ssh_host_ecdsa_key_private'], :mode => 0600 :owner => deploy :group => www-data)
