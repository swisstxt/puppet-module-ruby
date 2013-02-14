class ruby::postgres {
  include ruby

  # install the ruby drivers
  package{'rubygem-pg':
    ensure => installed,
    alias  => lsbmajdistrelease ? {
      '5'     => 'ruby-postgres',
      default => 'rubygem-pg',
    },
  }

}
