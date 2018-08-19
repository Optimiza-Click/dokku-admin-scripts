/root/dokku-admin-scripts/google-fluentd/nginx_generator.sh > /etc/google-fluentd/config.d/nginx.conf 
systemctl restart google-fluentd.service
