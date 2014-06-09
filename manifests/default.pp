import "puppet-apt/manifests/init.pp"
import "puppet-apt/manifests/ppa.pp"

$as_vagrant   = 'sudo -u vagrant -H bash -l -c'
$home         = '/home/vagrant'

# --- Preinstall Stage ---


# --- Packages ---

# Rails Dependencies
package { 'curl':
  ensure => installed
}

package { ['sqlite3', 'libsqlite3-dev']:
  ensure => installed;
}

package { 'build-essential':
  ensure => installed
}

package { 'git-core':
  ensure => installed
}

# Node Dependencies
package { ['python', 'g++', 'make', 'software-properties-common']:
  ensure => installed
}

# Editing Tools

package { 'vim':
  ensure => latest
}

package { 'tmux':
  ensure => latest
}


# --- Node ---------------------------------------------------------------------

apt::ppa { 'ppa:chris-lea/node.js': }

package { 'nodejs': 
  ensure => 'installed'
}

apt::ppa ['ppa:chris-lea/node.js'] -> Package['nodejs']


