#role/manifests/default.pp
class role::default {
	include profile::base
	firewall { '100 allow http and https access':
		dport  => [80, 443],
		proto  => tcp,
		action => accept,
	}
}
