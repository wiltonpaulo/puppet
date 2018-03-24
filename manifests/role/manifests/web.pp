#role/manifests/web.pp
class role::default {
	include profile::base
	include profile::web
}
