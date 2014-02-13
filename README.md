puppet-crontab
==============

A puppet module to manage crontab.

## Sample Usage
Install backup and use the provided configuration defaults:



Uninstall backup:
```puppet
node default {
	class {'backup':
		ensure => absent,
	}
}
```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-backup/issues)
