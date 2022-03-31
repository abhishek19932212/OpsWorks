bash "reconfigure config file" do
    user "root"
    code <<-EOH
    if [ -f "/home/deploy/.ssh/config" ] ; then
    rm "$file"
    fi
    touch /home/deploy/.ssh/config
    echo "Host github.com\nIdentityFile /home/deploy/.ssh/id_ecdsa\nStrictHostKeyChecking no" > /home/deploy/.ssh/config
    chmod 600 /home/deploy/.ssh/config
    chown deploy:www-data /home/deploy/.ssh/config
    EOH
end
