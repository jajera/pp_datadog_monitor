notify { 'Hello, World!':
  message => 'Hello, World!',
}

# Install the 'datadog-datadog_agent' module
exec { 'install_datadog-datadog_agent':
  command => '/opt/puppetlabs/bin/puppet module install datadog-datadog_agent',
  unless  => '/opt/puppetlabs/bin/puppet module list | grep datadog-datadog_agent',
}

# # include datadog_agent

# datadog_agent::integration { 'dns_check':
#   instances => [
#     {
#       hostname   => 'example.com',
#       nameserver => '8.8.8.8',
#     },
#   ],
# }
