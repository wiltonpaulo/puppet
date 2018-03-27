#arquivo de classe do cloud
class role::cloud {
  package { 'nfs-utils':
    ensure => present,
  }
}
