Package {
  allow_virtual => true,
}
node default {
  hiera_classes('classes')
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
