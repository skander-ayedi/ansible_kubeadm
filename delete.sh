#!/bin/bash

# Delete Kubernetes components
sudo kubeadm reset -f
sudo rm -rf $HOME/.kube

# Remove Kubernetes packages
sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni -y
sudo apt-get autoremove -y

# Remove any remaining Kubernetes or Docker files and directories
sudo rm -rf /etc/kubernetes
sudo rm -rf /var/lib/etcd
sudo rm -rf /var/lib/kubelet
sudo rm -rf /var/lib/dockershim
sudo rm -rf /var/lib/cni
sudo rm -rf /var/run/kubernetes
sudo rm -rf /var/lib/rook

echo "Kubernetes and all its dependencies have been removed from this system."

