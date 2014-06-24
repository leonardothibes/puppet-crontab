define crontab::weekly(
	$ensure = present,
	$day    = mon,
	$hour   = 0,
	$minute = 0,
	$user   = 'root',
	$mode   = 0755,
	$env    = [],
    $stdout = '/dev/null',
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
        stdout   => $stdout,
        stderr   => $stderr,
		command  => $command,
	}
}
