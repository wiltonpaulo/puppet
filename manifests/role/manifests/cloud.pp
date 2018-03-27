#arquivo de classe do cloud
class role::cloud {
  package { 'vsftpd':
    ensure => present,
  }
}
