#role/manifests/default.pp
class role::default {
	include profile::base
	firewall { 'ssh http and https access':
		dport  => [22, 80, 443],
		proto  => tcp,
		action => accept,
	}
}
