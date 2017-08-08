class bannercustom(){
  file { '/tmp/testbanner.txt':
    ensure => 'present',
    recurse => true,
    source => [
        'puppet:///modules/ssh/banner.txt',
    ],
  }
  class { 'ssh':
    storeconfigs_enabled => false,
    server_options => {
      #'Port' => [22, 2222, 2288],
      'Banner' => '/tmp/testbanner.txt',
      'SyslogFacility' => 'AUTHPRIV',
      'AuthorizedKeysFile' => '.ssh/authorized_keys',
      'PasswordAuthentication' => 'yes',
      'ChallengeResponseAuthentication' => 'no',
      'GSSAPIAuthentication' => 'yes',
      'GSSAPICleanupCredentials' => 'no',
      'UsePAM' => 'yes',
      'X11Forwarding' => 'yes',
      'AcceptEnv' => '"XMODIFIERS"',
    },
  }
  include ssh
}
