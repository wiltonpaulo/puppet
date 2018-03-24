<<<<<<< HEAD
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

=======
node default {
  if $::role {
      include "role::${::role}"
  } else {
      include profile::base
      notify { "Node  ${::fqdn} has no role set.": }
  }
}       # applies to nodes that aren't explicitly defined
>>>>>>> 0aaf7b8a32f62558c4a2197ce1faab006a7bc7c8
