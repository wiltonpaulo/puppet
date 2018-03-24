node default {
  if $::role {
      include "role::${::role}"
  } else {
      include profile::base
      notify { "Node  ${::fqdn} has no role set." }
  }
}       # applies to nodes that aren't explicitly defined
