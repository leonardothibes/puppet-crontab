define  crontab::weekly(
	$ensure = present,
	$day    = mon,
	$hour   = 0,
	$minute = 0,
	$user   = 'root',
	$mode   = 0644,
	$env    = [],
	$command,
) {
	crontab::job {$title:
		ensure   => $ensure,
		minute   => $minute,
		hour     => $hour,
		monthday => '*',
		month    => '*',
		weekday  => $day,
		user     => $user,
		mode     => $mode,
		env      => $env,
		command  => $command,
	}
}
