define crontab::daily(
	$ensure  = present,
	$hour    = 0,
	$minute  = 0,
	$user    = 'root',
	$mode    = 0644,
	$env     = [],
    $stdin   = '/dev/null',
    $stderr  = '/dev/null',
	$command,
) {
	crontab::job {$title:
		ensure   => $ensure,
		minute   => $minute,
		hour     => $hour,
		monthday => '*',
		month    => '*',
		weekday  => '*',
		user     => $user,
		mode     => $mode,
		env      => $env,
        stdin    => $stdin,
        stderr   => $stderr,
		command  => $command,
	}
}
