define  crontab::monthly(
	$ensure = present,
	$day    = 1,
	$hour   = 0,
	$minute = 0,
	$user   = 'root',
	$mode   = 0644,
	$env    = [],
    $stdin  = '/dev/null',
    $sterr  = '/dev/null',
	$command,
) {
	crontab::job {$title:
		ensure   => $ensure,
		minute   => $minute,
		hour     => $hour,
		monthday => $day,
		month    => '*',
		weekday  => '*',
		user     => $user,
		mode     => $mode,
		env      => $env,
        stdin    => $stdin,
        sterr    => $sterr,
		command  => $command,
	}
}
