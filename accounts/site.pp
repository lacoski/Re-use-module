## Cài đặt module accounts trước:
# puppet module install puppetlabs-accounts --version 1.1.0
# link: https://forge.puppet.com/puppetlabs/accounts
node default {
	notify {"Re use module mcollective no ssl !":}

  # Cài đặt và đồng bộ trên plugin trên tất cả các node
  class { '::mcollective':
 		client            => true,
 		middleware_hosts => [ 'clienttest.puppet.local' ],
 	}
	mcollective::plugin { 'test':
  	source => 'puppet:///modules/mcollective/plugins/test',
	}
}
node master {

}
node middleware {

}
node Agent1{

}
node Agent2{

}
