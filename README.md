# Drupal module for Puppet

## Description
Classes and definitions to help manage Drupal installations.

## Usage

### drupal::drush
<pre>
include drupal::drush
</pre>

### drupal::cacherouter::memcached
<pre>
include memcached::server
drupal::cacherouter::memcached { cache:
	root => "/var/www/",
	servers => ["memcache1", "memcache2"],
}
</pre>

### drupal::cacherouter::apc
<pre>
include php::five
drupal::cacherouter::apc { cache:
	root => "/var/www/",
}
</pre>

