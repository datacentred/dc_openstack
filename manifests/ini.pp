# == Class: ::dc_openstack::ini
#
# Modify settings in ini files
#
class dc_openstack::ini (
 
  Hash $defaults,

){
  create_resources('ini_setting', hiera_hash('settings'), $defaults)
}

