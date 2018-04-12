#profile/manifests/base.pp
class profile::test {
  include ntp
  include firewall
}
