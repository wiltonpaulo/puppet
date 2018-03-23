node 'hub', 'cloud1', 'cloud2', 'cloud3' {    # applies to ns1 and ns2 nodes
  file {'/tmp/dns':    # resource type file and filename
    ensure => present, # make sure it exists
    mode => '0644',
    content => "so na nuvem 22h07. CLOUD\n",
  }
}
node 'admin', 'puppet' {    # applies to ns1 and ns2 nodes
  file {'/tmp/dns':    # resource type file and filename
    ensure => present, # make sure it exists
    mode => '0644',
    content => "mudou tudo\n",
  }
}

node default {}       # applies to nodes that aren't explicitly defined
