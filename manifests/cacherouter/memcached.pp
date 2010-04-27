# memcached.pp

define drupal::cacherouter::memcached(
	$root,
	$servers = []
) {

	include memcached::php
	
	drupal::cacherouter { "${name}":
		root => $root,
		engine => 'memcached',
		servers => $servers,
	}

}
