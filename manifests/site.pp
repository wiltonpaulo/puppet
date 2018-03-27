$role= hiera('role', false)
node default {
  if $::role {
      include "role::${::role}"      
  } else {
      include profile::base
      include profile::default
      notify { "Sem ROLE para ${::fqdn}.": }
  }
}
