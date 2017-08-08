## Cài đặt module mcollective trước:
# puppet module install puppet-mcollective --version 2.5.0
# https://forge.puppet.com/puppet/mcollective

node default {
	notify {"Re use module mcollective !":}
}
node master {
	class { '::mcollective':
 		client            => true,
 		middleware_hosts => [ 'middleware.puppet.local' ],
 	}
	mcollective::plugin { 'test':
  	source => 'puppet:///modules/mcollective/plugins/test',
	}

	file { '/etc/hosts':
    ensure => 'present',
    source => 'puppet:///modules/hostname/hostname.txt',
  }
}
node middleware {
	# Node cài đặt ActiveMQ, có thể ghép chung với 1 node agent or master khác
}
node agent1 {
	class { '::mcollective':
 		middleware_hosts => [ 'middleware.puppet.local' ],
 	}
	mcollective::plugin { 'test':
  	source => 'puppet:///modules/mcollective/plugins/test',
	}

	file { '/etc/hosts':
    ensure => 'present',
    source => 'puppet:///modules/hostname/hostname.txt',
  }
}
node agent2 {
	class { '::mcollective':
		middleware_hosts => [ 'middleware.puppet.local' ],
	}
	mcollective::plugin { 'test':
		source => 'puppet:///modules/mcollective/plugins/test',
	}

	file { '/etc/hosts':
		ensure => 'present',
		source => 'puppet:///modules/hostname/hostname.txt',
	}
}
