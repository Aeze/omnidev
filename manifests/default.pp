
# --- Preinstall Stage ---

stage { 'preinstall':
  before => Stage['main']
}

class apt_get_update {
  exec {
    "apt-get -y update":
      path: "usr/bin"
  }
}

class { 'apt_get_update':
  stage => preinstall
}

# --- Packages ---

package { 'curl':
  ensure => installed
}

package { ['sqlite3', 'libsqlite3-dev']:
  ensure => installed;
}
