define crontab::weekly(
	$ensure = present,
	$day    = mon,
	$hour   = 0,
	$minute = 0,
	$user   = 'root',
	$mode   = 0644,
	$env    = [],
    $stdin  = '/dev/null',
    $stderr = '/dev/null',
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
        stdin    => $stdin,
        stderr   => $stderr,
		command  => $command,
	}
}
