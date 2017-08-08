class setupfirewall() {

  #package {'iptables-services':
  #  ensure => installed,
  #}
  resources { 'firewall':
    purge => true,
  }
  Firewall {
    before  => Class['my_fw::post'],
    require => Class['my_fw::pre'],
  }
  class { ['my_fw::pre', 'my_fw::post']: }
  firewall { '004 Allow inbound SSH':
    dport    => 22,
    proto    => tcp,
    action   => accept,
  }
  firewall { '005 test output':
    chain     => 'OUTPUT',
    dport    => 22,
    proto    => tcp,
    action   => accept,    
  }
}
