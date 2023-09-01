notify { 'Hello, World!':
  message => 'Hello, World!',
}

datadog_agent::integration { 'dns_check':
  instances => [
    {
      hostname   => 'example.com',
      nameserver => '8.8.8.8',
    },
  ],
}
