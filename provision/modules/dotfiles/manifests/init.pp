class dotfiles {
	file { '/root/.bashrc' :
		ensure => file,
		source => 'puppet:///modules/dotfiles/bashrc',
		owner => 'root',
		group => 'root',
		mode => '0664',
	}
	file { '/root/.vimrc' :
		ensure => file,
		source => 'puppet:///modules/dotfiles/vimrc',
		owner => 'root',
		group => 'root',
		mode => '0664',
	}

	file { '/home/vagrant/.bashrc' :
		ensure => file,
		source => 'puppet:///modules/dotfiles/bashrc',
		owner => 'vagrant',
		group => 'vagrant',
		mode => '0664',
	}
	file { '/home/vagrant/.vimrc' :
		ensure => file,
		source => 'puppet:///modules/dotfiles/vimrc',
		owner => 'vagrant',
		group => 'vagrant',
		mode => '0664',
	}

	file { '/opt/scripts' :
		source => 'puppet:///modules/dotfiles/scripts',
		owner => 'root',
		group => 'root',
		mode => 755,
		recurse => true,
	}
	package { 'mercurial' : ensure => installed }
	package { 'autoconf' : ensure => installed }
	package { 'gcc' : ensure => installed }
	package { 'make' : ensure => installed }
	exec { 'install-vcprompt' :
		command => '/bin/bash /opt/scripts/install-vcprompt.sh',
		require => [
			File['/opt/scripts'],
			Package['mercurial'],
			Package['gcc'],
			Package['make'],
		],
		creates => '/usr/local/bin/vcprompt',
	}
}
