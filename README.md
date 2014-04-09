puppet-crontab
==============

A puppet module to manage crontab.

## Sample Usage

Creating job to run daily at 12:00:
```puppet
crontab::daily {'daily-test':
	hour    => 12,
	minute  => 0,
	command => 'rm -Rf /tmp/*',
}
```

Creating job to run hourly at minute 30(1:30, 2:30, 3:30...):
```puppet
crontab::hourly {'hourly-test':
	minute  => 30,
	command => '/var/lib/scripts/backup-svn.sh',
}
```

Creating job to run every 10º day of month, at 12:00:
```puppet
crontab::monthly {'monthly-test':
	day     => 10,
	hour    => 12,
	minute  => 30,
	command => '/opt/svn/scripts/bkp.sh',
}
```

Creating job to run weekly, every tuesday, at 07:15 pm with some environment variables:
```puppet
crontab::weekly {'weekly-test':
	day     => 'tue',
	hour    => 7,
	minute  => 15,
	command => '/root/scripts/bkp.sh',
	env     => [
		'JAVA_HOME=/var/lib/jvm',
		'MAILTO="user@empresa.com"',
	],
}
```

Removing a job:
```puppet
crontab::weekly {'weekly-test':
	ensure => absent
}

```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-crontab/issues)
