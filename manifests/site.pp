$role= hiera('role', false)
node default {
  if $::role {
      include "role::${::role}"
  } else {
      include profile::base      
      notify { "Sem ROLE para ${::fqdn}.": }
  }
}
