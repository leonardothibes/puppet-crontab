class crontab inherits crontab::params
{
	if $osfamily != 'Debian' {
		fail("Unsupported platform: ${osfamily}/${operatingsystem}")
	}

	package {'crontab::package::install':
		ensure => present,
		name   => $crontab::params::package,
	}

	service {'crontab::service::run':
		ensure  => running,
		name    => $crontab::params::service,
		require => Package[$crontab::params::package],
	}

	file {$crontab::params::confpath:
		ensure  => present,
		owner   => root,
		group   => root,
		mode    => 0644,
		content => template('crontab/crontab.erb'),
		require => Package[$crontab::params::package],
	}
}
