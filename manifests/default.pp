#script puppet para montar um servidor web com PHP, Apache, Mysql e Postgre

package { 'apache2':
  ensure => installed,
}
->
package { 'php5':
  ensure => installed,
}
->
file {'/etc/php5/apache2/conf.d/local.ini':
  ensure => present,
  owner => root, 
  group => root, 
  mode => 644,
  content => "display_errors = On \nerror_reporting = E_ALL \n",
  notify  => Service['apache2'],
}
->
package { 'postgresql':
  ensure => installed,
}
->
package { 'php5-pgsql':
  ensure => installed,
}
->
package { 'mysql-server':
  ensure => installed,
}
->
package { 'php5-mysql':
  ensure => installed,
}
->
package { 'php5-curl':
  ensure => installed,
}
->
package { 'php5-xmlrpc':
  ensure => installed,
}
->
package { 'php5-gd':
  ensure => installed,
}
->
package { 'php5-intl':
  ensure => installed,
}

service { 'apache2':
  ensure => running,
}