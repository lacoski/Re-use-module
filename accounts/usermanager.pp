class usermanager() {
  accounts::user { 'thanh1':
    shell    => '/bin/bash',
    password => '$1$UhZax9WZ$Zu/uSyvh7BVeHW0Lu6rSZ.',
    locked   => false,
  }
  accounts::user { 'thanh2':
    shell    => '/bin/bash',
    password => '$1$UhZax9WZ$Zu/uSyvh7BVeHW0Lu6rSZ.',
    locked   => false,
  }
  accounts::user { 'thanh3':
    shell    => '/bin/bash',
    password => '$1$UhZax9WZ$Zu/uSyvh7BVeHW0Lu6rSZ.',
    locked   => false,
  }
}
