include crontab::params
define  crontab::job(
	$ensure   = present,
	$minute   = '*',
	$hour     = '*',
	$monthday = '*',
	$month    = '*',
	$weekday  = '*',
	$user     = $crontab::params::user,
	$mode     = $crontab::params::mode,
	$env      = [],
	$command,
) {
	case $ensure {
		'present','absent': { $real_ensure = $ensure }
		default           : { fail("Invalid value \"${ensure}\" used for ensure") }
	}
	file {"cronjob::${title}":
		ensure  => $real_ensure,
		owner   => $user,
		group   => $group,
		mode    => $mode,
		path    => "${crontab::params::confpath}/${title}",
		content => template('crontab/job.erb'),
	}
}
