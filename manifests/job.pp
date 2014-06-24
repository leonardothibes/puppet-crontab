define crontab::job(
	$ensure   = present,
	$minute   = '*',
	$hour     = '*',
	$monthday = '*',
	$month    = '*',
	$weekday  = '*',
	$user     = 'root',
	$mode     = 0755,
	$env      = [],
	$stdout   = '/dev/null',
	$stderr   = '/dev/null',
	$command,
) {
	include crontab::params
	include crontab
	
	if !(($ensure == 'present') or ($ensure == 'absent')) {
		fail("Invalid value \"${ensure}\" used for ensure param")
	}
	if !($minute == '*' or ($minute >= 0 and $minute <= 59)) {
		fail('Specify a minute in the range 0-59')
	}
	if !($hour == '*' or ($hour >= 0 and $hour <= 23)) {
		fail('Specify an hour in the range 0-23')
	}
	if !($monthday == '*' or ($monthday >= 1 and $monthday <= 31)) {
		fail('Specify a day of month in the range 1-31')
	}
	if !($month == '*' or ($month >= 1 and $month <= 12)) {
		fail('Specify a month in the range 1-12')
	}

	file {"cronjob::${title}":
		ensure  => $real_ensure,
		owner   => $user,
		group   => $user,
		mode    => $mode,
		path    => "${crontab::params::jobpath}/${title}",
		content => template('crontab/job.erb'),
	}
}
