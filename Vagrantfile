Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "private_network", ip: "192.168.56.22"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
    vb.name = "emart-microservices"
  end

  # Otomatik Docker ve Docker Compose kurulumu (Sizi zahmetten kurtarmak icin)
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    apt-get update
    apt-get install -y docker.io docker-compose git curl
    systemctl enable docker
    systemctl start docker
    usermod -aG docker vagrant
    echo "Docker ve Docker Compose basariyla kuruldu!"
  SHELL
end
