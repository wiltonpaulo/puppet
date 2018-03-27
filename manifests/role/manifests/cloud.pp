#arquivo de classe do cloud
class role:cloud {
  package { 'telnet':
    ensure => present,
  }
}
