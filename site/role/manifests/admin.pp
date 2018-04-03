#arquivo de classe do cloud
class role::admin {
  package { 'vsftpd':
    ensure => present,
  }
  package { 'telnet':
    ensure => present,
  }
  notify { "ROLE OK para ${::fqdn}.": }
}
