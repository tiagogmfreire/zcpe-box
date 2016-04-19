#script puppet para montar um servidor web com PHP, Apache, Mysql e Postgre

package { 'apache2':
  ensure => installed,
}
->
package { 'php5':
  ensure => installed,
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
