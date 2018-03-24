#profile/manifests/base.pp
class profile::base {
  include ntp
  class { 'motd' :
    content => "Host ${::fqdn}.\nRunning on ${::operatingsystem}\n\n",
  } 
}
