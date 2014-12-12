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
}
