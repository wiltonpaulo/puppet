Package {
  allow_virtual => true,
}
node default {
<<<<<<< HEAD
  if $::role {
      include "role::${::role}"
  } else {
      include profile::base
      notify { "Node  ${::fqdn} has no role set.": }
  }
}
=======
  hiera_include('classes')
}
#$role=hiera('role', true)
#node default {
#  if $::role {
#      include "role::${::role}"
#  } else {
#      include profile::base
#      notify { "Sem ROLE para ${::fqdn}.": }
#}
#}
>>>>>>> fcef6c9d8fd226991baaddd54bebdb53da01870c
