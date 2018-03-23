node 'hub', 'cloud1', 'cloud2', 'cloud3' {    # applies to ns1 and ns2 nodes
  file {'/tmp/dns':    # resource type file and filename
    ensure => present, # make sure it exists
    mode => '0644',
    content => "Only DNS servers get this file. CLOUD\n",
  }
}
node 'admin' {    # applies to ns1 and ns2 nodes
  file {'/tmp/dns':    # resource type file and filename
    ensure => present, # make sure it exists
    mode => '0644',
    content => "puppetserver. 22032018\n",
  }
}

node default {}       # applies to nodes that aren't explicitly defined

