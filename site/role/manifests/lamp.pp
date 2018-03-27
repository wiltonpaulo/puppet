#role/manifests/lamp.pp
class role::lamp {
	include profile::base
	include profile::lamp
}
