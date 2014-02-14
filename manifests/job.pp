define crontab::job(
	$ensure   = present,
	$minute   = '*',
	$hour     = '*',
	$monthday = '*',
	$month    = '*',
	$weekday  = '*',
	$user     = 'root',
	$mode     = 0644,
	$env      = [],
	$command,
) {
	include crontab::params
	case $ensure {
		'present','absent': { $real_ensure = $ensure }
		default           : { fail("Invalid value \"${ensure}\" used for ensure") }
	}
	file {"cronjob::${title}":
		ensure  => $real_ensure,
		owner   => $user,
		group   => $group,
		mode    => $mode,
		path    => "${crontab::params::jobpath}/${title}",
		content => template('crontab/job.erb'),
	}
}
