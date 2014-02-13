class crontab::params
{
	$envpath  = ['/usr/local/sbin','/usr/local/bin','/sbin','/bin','/usr/sbin','/usr/bin']
	$cronpath = '/etc/cron.d'
	$confpath = '/etc/crontab'
	$shell    = '/bin/sh'
	$user     = 'root'
	$group    = 'root'
	$mode     = '0644'
	$service  = 'cron'
	$package  = 'cron'
}
