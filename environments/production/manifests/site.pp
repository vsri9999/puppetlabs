file{ 'motd':
     ensure => present,
     path => '/etc/motd',
     content => 'This is to test',
}
