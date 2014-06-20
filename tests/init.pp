# The baseline for module testing used by Puppet Labs is that each manifest
# should have a corresponding test manifest that declares that class or defined
# type.
#
# Tests are then run by using puppet apply --noop (to check for compilation
# errors and view a log of events) or by fully applying the test in a virtual
# environment (to compare the resulting system state to the desired state).
#
# Learn more about module testing here:
# http://docs.puppetlabs.com/guides/tests_smoke.html
#
crontab::hourly {'hourly-test':
	minute  => 30,
	command => '/var/lib/scripts/backup-svn.sh',
}

crontab::daily {'daily-test':
	hour    => 12,
	minute  => 0,
	command => 'rm -Rf /tmp/*',
}

crontab::monthly {'monthly-test':
	day     => 10,
	hour    => 12,
	minute  => 30,
	command => '/opt/svn/scripts/bkp.sh',
}

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
