node 'node1' {
       include firstmodule
       include lint
       include users::user21
       include users::user22
       include group::groups
       include webservice::package
       class { 'variables::testvar' :
		parameter => 'Variable passed from Site',
		number => 99,
 	}
	include var2module::myvariable
	include  var2module1::myvariable2
}
node default {
}
file{ 'motd':
     ensure => present,
     path => '/etc/motd',
     content => 'This is to test',
}

file{'status':
     ensure => present,
     path => '/root/first.txt',
     content => "Hardware : ${facts['system_uptime']['uptime']}" ,
}
