class crontab::params
{
	$envpath  = ['/bin','/sbin','/usr/bin','/usr/sbin','/usr/local/bin','/usr/local/sbin']
	$cronpath = '/etc/cron.d'
	$confpath = '/etc/crontab'
	$shell    = '/bin/sh'
	$user     = 'root'
	$group    = 'root'
	$mode     = '0644'
	$service  = 'cron'
	$package  = 'cron'
}
