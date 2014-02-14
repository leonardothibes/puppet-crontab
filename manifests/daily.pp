define  crontab::daily(
	$ensure = present,
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
		weekday  => '*',
		user     => $user,
		mode     => $mode,
		env      => $env,
		command  => $command,
	}
}
