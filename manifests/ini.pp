# == Class: ::dc_openstack::ini
#
# Modify settings in ini files
#
class dc_openstack::ini (
  String $path,
){
  create_resources('ini_setting', hiera_hash('settings'), { path => $path })
  Package<||> -> Ini_setting<||>
}

