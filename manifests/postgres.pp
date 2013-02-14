class ruby::postgres {
  include ruby

  # install the ruby drivers
  package{'rubygem-pg':
    ensure => installed,
    name   => lsbmajdistrelease ? {
      '5'     => 'ruby-postgres',
      default => 'rubygem-pg',
    },
  }

}
