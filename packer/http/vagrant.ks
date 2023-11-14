eula --agreed
lang en_US.UTF-8
keyboard us
timezone UTC+3

network --onboot yes --bootproto=dhcp --device=eth0 --activate --noipv6
network --hostname=otus-c8

rootpw vagrant
authconfig --enableshadow --passalgo=sha512
user --groups=wheel --name=vagrant --password=vagrant --gecos="vagrant"

selinux --enforcing
firewall --disabled

firstboot --disable

%packages --default
@^minimal
@core
sudo
%end

text

bootloader --location=mbr --append="ipv6.disable=1 crashkernel=auto"

skipx
logging --level=info
zerombr
clearpart --all --initlabel
autopart --type=lvm
reboot
