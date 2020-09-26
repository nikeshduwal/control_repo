class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => 'present',
    user => 'root',
    type => 'ssh-rsa',
    key =>'AAAAB3NzaC1yc2EAAAADAQABAAABAQDrBO2QF6aMNt+h8MA/dAToPJsbUuoLxa4pQ4R1OcynMXCdDSCAHzbViUJwIXqBdTSZOASuknwsea7QjWhprKQfm+aDbLlZMvAh21Vs1MKaqpmkB33vz379ooZcEPSr1mx1J+G/zk8ChBY3M+O02tOgFKnK4GJdtG2fNXCJkPHHbHSfckxKjTMxhuz8Wy4JeLu5KgwRNeSPphovNxuczflIcakdriBVQ+vMRqgvI+6sqpJ4svgNDw86+D0Eq8UNOEU1d5odI9EMvSCmDtLJGEuW7UA0q9htAUNSSuTjge6w4lTgQyuUG0/AYxU0EzcUDvts8oFpBC/9UdBCaFbEY3q/',
  }
}
