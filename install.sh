#!/bin/bash

# ============ Update Package List
apt-get update
apt-get install -y --no-install-recommends apt-utils
apt-get install -y --no-install-recommends software-properties-common locales

locale-gen en_US.UTF-8

echo "LANGUAGE=en_US.UTF-8" >> /etc/default/locale
echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale
echo "LC_CTYPE=UTF-8" >> /etc/default/locale

export LANG=en_US.UTF-8

apt-get install -y --no-install-recommends --allow-downgrades --allow-remove-essential --allow-change-held-packages \
  gcc \
  make \
  autoconf \
  libc-dev \
  pkg-config \
  git \
  curl \
  vim \
  nano \
  tree \
  zip \
  unzip \
  jq

add-apt-repository ppa:deadsnakes/ppa
apt -y update
apt install -y python3.6 python3-pip

update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
update-alternatives --config python3

pip3 install --upgrade pip

# Install aws-cli2
cd ~
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# Clear
apt-get clean && apt-get autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
