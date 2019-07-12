#
# == Class: dell::warranty
#
# Install Dell API key where the fact can access it
# Used by the fact in this module
#
class dell::warranty (
  Optional[String] $api_key,
  String $file_mode = '0644',
) {
  file { '/etc/dell_api_key':
    content => $api_key,
    owner   => 'root',
    group   => 'root',
    mode    => $file_mode,
  }
}
