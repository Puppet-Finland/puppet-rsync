# Install rsync package
#
# @example
#   include rsync
class rsync {

  # Ensure that rsync is installed
  package { 'rsync-rsync':
    ensure => 'present',
    name   => 'rsync',
  }

}
