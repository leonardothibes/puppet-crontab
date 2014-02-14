class crontab::params
{
	$envpath  = ['/bin','/sbin','/usr/bin','/usr/sbin','/usr/local/bin','/usr/local/sbin']
	$cronpath = '/etc/cron.d'
	$confpath = '/etc/crontab'
	$jobpath  = '/etc/cron.d'
	$shell    = '/bin/sh'
	$service  = 'cron'
	$package  = 'cron'
}
