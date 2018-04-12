Package {
  allow_virtual => true,
}
node default {
  if $::role {
      include "role::${::role}"
  } else {
      include profile::base
      notify { "Node  ${::fqdn} has no role set.": }
  }
}
