#arquivo de classe do cloud
class role::test {
  package { 'vsftpd':
    ensure => present,
  }
  package { 'telnet':
    ensure => present,
  }
  notify { "ROLE OK para ${::fqdn}.": }
}
