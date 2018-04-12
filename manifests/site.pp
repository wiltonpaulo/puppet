Package {
  allow_virtual => true,
}
node default {
  if $::role {
      include "role::${::role}"
  } else {
      notify { "Node  ${::fqdn} has no role set.": }
  }
}
