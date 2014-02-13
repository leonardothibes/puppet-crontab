include crontab::params
define  crontab::job(
	$ensure   = present,
	$minute   = '*',
	$hour     = '*',
	$monthday = '*',
	$weekday  = '*',
	$user     = $crontab::params::user,
	$mode     = $crontab::params::mode,
	$env      = [],
	$command,
) {
	if $ensure != 'present' {
		$ensure
	}
}
