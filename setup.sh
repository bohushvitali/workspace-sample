#!/bin/sh

sudo snap install microk8s --classic

sudo snap install kubectl --classic

curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/v0.23.0/skaffold-linux-amd64 && chmod +x skaffold && sudo mv skaffold /usr/local/bin

sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
