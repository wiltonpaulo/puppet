#profile/manifests/base.pp
class profile::base {
  class { 'motd' :
    content => "Host ${::fqdn}.\n\nRunning on ${::operatingsystem}",
  } 
}
