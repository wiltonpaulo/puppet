#role/manifests/default.pp
class role::default {
	include profile::base
        include '::profile::netdata::netdata'
	firewall { '000 ssh http and https access':
		dport  => [22, 80, 443],
		proto  => tcp,
		action => accept,
	}
	package { 'nfs-utils':
  	ensure => present,
	}
	file_line { 'sudo_rule_auto':
  	path => '/etc/sudoers',
  	line => 'auto	ALL=(ALL)	NOPASSWD: ALL',
	}
	file_line { 'sudo_rule_wsilva':
		path => '/etc/sudoers',
		line => 'wsilva	ALL=(ALL)	NOPASSWD: ALL',
	}
}
