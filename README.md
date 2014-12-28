The Chef Kitchen used to [austenito.com](austenito.com). The blog is hosted on DigitalOcean.

# VPS Setup

## Setup user accounts

Setup users and add make them sudo!
```
sudo adduser [user]
sudo adduser [user] sudo
```

## Add ssh key from computer to server

```
cat ~/.ssh/key.pub | ssh happiness@162.243.82.98 "cat >> ~/.ssh/authorized_keys"
```

## Install Ruby However

Install Ruby with ruby-install or whatever.

## Install Docker

Follow the install instructions here: https://docs.docker.com/installation/ubuntulinux/

## Setup OpenVPN

I am using a docker image to run OpenVPN in a docker container: https://github.com/kylemanna/docker-openvpn

```
sudo docker run --name openvpn-data -v /etc/openvpn ubuntu:14.04

sudo docker run --volumes-from openvpn-data --rm kylemanna/openvpn ovpn_genconfig -u udp://austenito.com:1194
sudo docker run --volumes-from openvpn-data --rm -it kylemanna/openvpn ovpn_initpki

sudo docker run --volumes-from openvpn-data --name openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn

sudo docker run --volumes-from openvpn-data --rm -it kylemanna/openvpn easyrsa build-client-full austenito-client nopass
sudo docker run --volumes-from openvpn-data --rm kylemanna/openvpn ovpn_getclient austenito-client > austenito.ovpn
```

## Cook the blog

```
knife solo prepare <user>@<host>
knife solo cook <user>@<host>
```
