# This Puppet manifest configures Nginx to add a custom HTTP response header

exec { 'update':
  command  => 'sudo apt-get update',
  provider => shell,
}

# Ensure Nginx is installed and running
package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure => running,
  enable => true,
}

# Define the custom HTTP header
file_line { 'header line':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  line   => "	location / {
  add_header X-Served-By ${hostname};",
  match  => '^\tlocation / {',
}

# Reload Nginx to apply changes
exec { 'restart service':
  command  => 'sudo service nginx restart',
  provider => shell,
}
