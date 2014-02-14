define  crontab::hourly(
	$ensure = present,
	$minute = 0,
	$user   = 'root',
	$mode   = 0644,
	$env    = [],
	$command,
) {
	crontab::job {$title:
		ensure   => $ensure,
		minute   => $minute,
		hour     => '*',
		monthday => '*',
		month    => '*',
		weekday  => '*',
		user     => $user,
		mode     => $mode,
		env      => $env,
		command  => $command,
	}
}
