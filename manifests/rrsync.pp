# Copy rrsync script to local binary dir
#
# @example
#   include rsync::rrsync
class rsync::rrsync {
  $rrsync_location = '/usr/share/doc/rsync/scripts/rrsync.gz'
  $rrsync_target_dir = '/usr/local/bin'

  exec { 'rsync-copy-rrsync':
    user    => 'root',
    group   => 'root',
    command => "/bin/cp ${rrsync_location} ${rrsync_target_dir} && /bin/gunzip ${rrsync_target_dir}/rrsync.gz",
    creates => "${rrsync_target_dir}/rrsync",
  }
  -> file {"${rrsync_target_dir}/rrsync":
  	ensure => present,
  	mode   => '0755',
  }
}
