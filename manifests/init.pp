notify { 'Hello, World!':
  message => 'Hello, World!',
}

exec { 'install_datadog-datadog_agent':
  command => '/opt/puppetlabs/bin/puppet module install datadog-datadog_agent',
  unless  => '/opt/puppetlabs/bin/puppet module list | grep datadog-datadog_agent',
}

class { 'datadog_agent':
  agent_major_version => 6,
}

datadog_agent::integration { 'dns_check':
  instances => [
    {
      hostname   => 'example.com',
      nameserver => '8.8.8.8',
    },
  ],
}
