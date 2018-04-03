class profile::netdata::netdata {

  case $::osfamily {
    'RedHat': {
      case $::operatingsystemmajrelease {
      '6': {
      package { 'netdata':
      	ensure          => 'installed',
      }
      exec { 'refresh_netdata':
	command     => '/sbin/service netdata restart',
	refreshonly => true,
      }
      file { '/etc/netdata/netdata.conf':
	      ensure  => file,
	      content => template('profile/netdata/netdata.conf'),
	      notify  => Exec['refresh_netdata'],
      }
      }
      '7': {
	      package { 'netdata':
	      ensure          => 'installed',
	      install_options => ['--nogpgcheck'],
      }
      exec { 'refresh_netdata':
	      command     => '/sbin/service netdata restart',
	      refreshonly => true,
      }
      file { '/etc/netdata/netdata.conf':
	      ensure  => file,
	      content => template('profile/netdata/netdata.conf'),
	      notify  => Exec['refresh_netdata'],
      }
      }
	      default:  { notice "Unsupported osfamily ${::osfamily}" }
      }
      }
}

}

