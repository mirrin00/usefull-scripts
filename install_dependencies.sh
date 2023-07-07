#!/bin/bash
set -e
sudo apt update
sudo apt upgrade -y
sudo apt install -y vim git qemu cmake build-essential manpages-dev curl
sudo snap install code --classic  # install vscode
# install yocto deps
sudo apt install -y gawk \
     wget \
     git \
     diffstat \
     unzip \
     texinfo \
     gcc \
     build-essential \
     chrpath \
     socat \
     cpio \
     python3 \
     python3-pip \
     python3-pexpect \
     xz-utils \
     debianutils \
     iputils-ping \
     python3-git \
     python3-jinja2 \
     libegl1-mesa \
     libsdl1.2-dev \
     python3-subunit \
     mesa-common-dev \
     zstd \
     liblz4-tool \
     file \
     locales

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
# Install docker-compose
sudo curl -SL https://github.com/docker/compose/releases/download/v2.19.1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo usermod -aG docker $USER
sudo usermod -aG docker $NEW_USER
