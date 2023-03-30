echo "Install Minikube ..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

echo "Install Kubectl ..."
curl -LO https://dl.k8s.io/release/v1.22.1/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "Start Minikube cluster ..."
minikube start --force --driver=docker