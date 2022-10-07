class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCWA3d9Tw4PaLKvQhzcDDYyrrv9Kt52duO97z/Con0HjyMA5nhlKUN7+uXVlfteWAcKLNYQ+x8dlOdGz1k6H6kI/0gRCYrvfiAa4WSnCD6eAjL4YiV+jDSTV0WEqyoOlg5yNiHZoFFa2nND8eVS9Ni0KohhJ4X0kcxW+fXSWzFl7O0eA6nWdmCGPpqPEwo4dJJ4mwobBYhCb5yqvemrWjqkux9KSockI6Z/VmavDrRKMHQWw6FMlPQ+9qAtuIRDZxcduTO0HJnMDk1GHft5kVQ0p76rKwERcnxuS7bvK2/idydkGtV4IWPEAWJy3Gf3q6zDGjM1uf6DiJJdj3lh6rWB',
  }  
}
