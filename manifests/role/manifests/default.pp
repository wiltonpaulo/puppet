#role/manifests/default.pp
class role::default {
	include profile::base
	firewall { '000 ssh http and https access':
		dport  => [22, 80, 443],
		proto  => tcp,
		action => accept,
	}

	file_line { 'sudo_rule':
  	path => '/etc/sudoers',
  	line => 'auto  ALL=(ALL)       NOPASSWD: ALL',
	}
}
