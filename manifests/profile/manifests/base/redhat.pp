#profile/manifests/base/redhat.pp
class profile::base::redhat {
  create_resources('yumrepo', hiera_hash('yumrepo', {}))
}
