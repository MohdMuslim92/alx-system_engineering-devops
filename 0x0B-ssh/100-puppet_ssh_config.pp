# This Puppet manifest configures private key ~/.ssh/school
file { '/etc/ssh':
  ensure => directory,
}

# Configure SSH client to use private key and disable password authentication
file_line { 'Turn off passwd auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^#?\s*IdentityFile\s+.+$',
  match_for_absence => true,
}
