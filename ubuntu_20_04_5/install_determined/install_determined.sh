sudo apt-get update && sudo apt-get install -y software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update && sudo apt-get install -y --no-install-recommends docker-ce
sudo systemctl reload docker
sudo usermod -aG docker $USER
sudo docker pull postgres:10
sudo docker pull determinedai/determined-master
sudo docker pull determinedai/determined-agent
