# Intro

- OS: ubuntu:16.04

- Linux packages:
 + git
 + curl
 + vim
 + nano
 + tree
 + zip
 + unzip
 + jq

- Python 3.6, python3-pip

- aws-cli version 2

# Start

```sh
cp .env.example .env

docker-compose up -d

docker-compose exec app bash
```

# Check

```sh
ls -l /usr/bin/python*
python3 --version
pip3 --version
aws --version
```

# Python

Install with packages list

```sh
touch requirements.txt
pip install -r requirements.txt
```
