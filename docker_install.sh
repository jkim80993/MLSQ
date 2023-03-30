echo "Install prerequisite package for Docker ..."
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
sleep 3

echo "Add GPG key ..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sleep 2

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sleep 2

echo "Install Docker Engine ..."
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sleep 2

sudo usermod -aG docker $USER && newgrp docker && sudo systemctl restart docker
