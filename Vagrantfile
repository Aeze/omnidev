
LOCAL_SYNCED_FOLDER = "~/Documents/"
FORWARDED_PORT = "3000"

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  #config.vm.network :forwarded_port, guest: FORWARDED_PORT, host: FORWARDED_PORT
  #config.vm.synced_folder LOCAL_SYNCED_FOLDER, "/home/vagrant/projects"

  #provision with puppet
  config.vm.provision "puppet" do |puppet|
      puppet.module_path = "manifests/modules"

  end

  #provide more memory to the box
  config.vm.provider :virtualbox do |vb|
     vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
end