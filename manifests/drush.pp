# drush.pp

class drupal::drush {

	file { "installdrush":
		name => "/usr/local/bin/installdrush",
		ensure => file,
		owner => root,
		group => root,
		mode => 700,
		source => "puppet:///drupal/installdrush",
	}
	
	exec { "/usr/local/bin/installdrush":
		subscribe => File["installdrush"],
		refreshonly => true,
		require => File["installdrush"],
	}

}
