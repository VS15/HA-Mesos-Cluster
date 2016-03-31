Vagrant.configure("2") do |config|
  config.vm.define "node01" do |node01|
  config.vm.synced_folder ".", "/vagrant"
    node01.vm.box = "larryli/vivid64"
    node01.vm.hostname = 'node01'
    #node01.vm.box_url = "larryli/vivid64"
    node01.vm.network :private_network, ip: "10.1.200.11"
    node01.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
    node01.vm.provision "shell", path: "ansible/bootstrap_masters.sh"
    #node01.vm.provision :shell, inline: 'ansible-playbook /vagrant/ansible/mesos_masters.yml -c local -v'
    end
  end
  
  config.vm.define "node02" do |node02|
    node02.vm.box = "larryli/vivid64"
    node02.vm.hostname = 'node02'
    node02.vm.box_url = "larryli/vivid64"
    node02.vm.network :private_network, ip: "10.1.200.12"

    node02.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "node02"]
    node02.vm.provision "shell", path: "ansible/bootstrap_masters.sh"
    end
  end 
  
  config.vm.define "node03" do |node03|
    node03.vm.box = "larryli/vivid64"
    node03.vm.hostname = 'node03'
    node03.vm.box_url = "larryli/vivid64"
    node03.vm.network :private_network, ip: "10.1.200.13"
    node03.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "node03"]
    node03.vm.provision "shell", path: "ansible/bootstrap_masters.sh"
    end
  end
  
  config.vm.define "node04" do |node04|
    node04.vm.box = "larryli/vivid64"
    node04.vm.hostname = 'node04'
    node04.vm.box_url = "larryli/vivid64"
    node04.vm.network :private_network, ip: "10.1.200.30"
    node04.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "node04"]
    node04.vm.provision "shell", path: "ansible/bootstrap_slaves.sh"
    end
  end

  config.vm.define "node05" do |node05|
    node05.vm.box = "larryli/vivid64"
    node05.vm.hostname = 'node05'
    node05.vm.box_url = "larryli/vivid64"
    node05.vm.network :private_network, ip: "10.1.200.40"
    node05.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "node05"]
    node05.vm.provision "shell", path: "ansible/bootstrap_slaves.sh"
    end
  end
  
  config.vm.define "node06" do |node06|
    node06.vm.box = "larryli/vivid64"
    node06.vm.hostname = 'node06'
    node06.vm.box_url = "larryli/vivid64"
    node06.vm.network :private_network, ip: "10.1.200.50"
    node06.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--name", "node06"]
    node06.vm.provision "shell", path: "ansible/bootstrap_slaves.sh"
    end
  end

end
#tested
