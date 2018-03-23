node 'hub', 'cloud1', 'cloud2', 'cloud3' {    # applies to ns1 and ns2 nodes
  file {'/tmp/dns':    # resource type file and filename
    ensure => present, # make sure it exists
    mode => '0644',
    content => "so na nuvem 17h30. CLOUD\n",
  }
}
node 'admin', 'puppet', 'sites' {    # applies to ns1 and ns2 nodes
  file {'/tmp/dns':    # resource type file and filename
    ensure => present, # make sure it exists
    mode => '0644',
    content => "mudou tudo carai\n",
  }
}

node default {}       # applies to nodes that aren't explicitly defined
