# cacherouter.pp

define drupal::cacherouter(
	$root = '',
	$engine = '',
	$servers = [],
	$shared = 'TRUE',
	$prefix = '',
	$path = '',
	$static = 'FALSE',
	$fast_cache = 'TRUE'
) {
	
	line { "${name}-cacherouter":
		file => "${root}/sites/default/settings.php",
		line => "require(\"settings-cacherouter.php\");",
		ensure => present
	}
	
	file { "${root}/sites/default/settings-cacherouter.php":
		owner => "www-data",
		group => "www-data",
		mode => 644,
		content => template("drupal/cacherouter/settings.php.erb"),
		require => Line["${name}-cacherouter"],
	}

}
