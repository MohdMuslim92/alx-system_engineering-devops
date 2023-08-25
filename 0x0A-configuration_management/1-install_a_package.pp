# This Puppet manifest installs Flask with a specific version using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  }
