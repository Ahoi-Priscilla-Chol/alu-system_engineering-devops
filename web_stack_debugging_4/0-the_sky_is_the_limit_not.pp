# Raises the open file limit for Nginx so it can handle high concurrent traffic
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/',
}

# Restart Nginx to apply the new limit
exec { 'nginx-restart':
  command => '/etc/init.d/nginx restart',
  path    => '/etc/init.d/:/usr/sbin/:/usr/bin/:/bin/',
  require => Exec['fix--for-nginx'],
}
