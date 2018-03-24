#profile/manifets/base.pp
class profile::base {
	include ntp
	include motd
}
