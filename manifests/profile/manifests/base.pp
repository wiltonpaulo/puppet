#profile/manifests/base.pp
class profile::base {
  include ntp
  class { 'motd' :
    content => "Host ${::fqdn}.\nRodando em ${::operatingsystem}\n@Tecdump\n\n",
  }

  create_resources('user', hiera_hash('user', {}))
  create_resources('firewall', hiera_hash('firewall', {}))

  case $::osfamily {
    'redhat': {
      include profile::base::redhat
    }    
    default: {
      fail("This profile is not supported")
    }
  }
}
