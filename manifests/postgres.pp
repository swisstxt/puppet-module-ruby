# Ruby bindings for PostgreSQL
#
class ruby::postgres {
  include ruby

  case $lsbmajdistrelease {
    5:       { package{'ruby-postgres': ensure => installed } }
    default: { package{'rubygem-pg':    ensure => installed } }
  }

}
