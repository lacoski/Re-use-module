class testscript() {
  exec { 'test script':
    command => "/usr/bin/bash  '/tmp/testscript/test.sh'",
    logoutput => true,
  }
}
