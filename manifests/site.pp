$role= hiera('role', false)
node default {
  if $::role {
      include "role::${::role}"
      include profile::default
  } else {
      include profile::base
      include profile::default
      notify { "Sem ROLE para ${::fqdn}.": }
  }
}
