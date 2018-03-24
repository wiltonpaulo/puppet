#profile/manifests/base.pp
class profile::base {
  include ntp
  class { 'motd' :
    content => "Host ${::fqdn}.\n\nRunning on ${::operatingsystem}",
  } 
}
