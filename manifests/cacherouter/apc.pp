# apc.pp

define drupal::cacherouter::apc(
	$root
) {
	
	drupal::cacherouter { "${name}":
		root => $root,
		engine => 'apc',
		require => Package["php-apc"],
	}

}
