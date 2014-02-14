define  crontab::daily(
	$ensure = present,
	$minute = 0,
	$hour   = 0,
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
		weekday  => '*',
		user     => $user,
		mode     => $mode,
		env      => $env,
		command  => $command,
	}
}
