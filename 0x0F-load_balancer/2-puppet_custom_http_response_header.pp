# This Puppet manifest configures Nginx to add a custom HTTP response header

# Ensure Nginx is installed and running
package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure => running,
  enable => true,
}

# Define the custom HTTP header
file { '/etc/nginx/conf.d/custom_headers.conf':
  content => "add_header X-Served-By $hostname;",
  notify  => Service['nginx'],
}

# Reload Nginx to apply changes
exec { 'reload_nginx':
  command     => '/usr/sbin/service nginx reload',
  refreshonly => true,
}
