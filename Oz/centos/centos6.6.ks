install
text
key --skip
keyboard us
lang en_US.UTF-8
skipx
network --device eth0 --bootproto dhcp
rootpw 8ik,)P:?
firewall --disabled
authconfig --enableshadow --enablemd5
selinux --disabled
timezone --utc Asia/Shanghai
bootloader --location=mbr --append="console=tty0 console=ttyS0,115200"
zerombr yes
clearpart --all

part /boot --fstype ext4 --size=500
part swap  --fstype swap --size=4096
part /     --fstype ext4 --grow --size=1
reboot

%packages
@base
@core
vim
wget

%post
--nochroot wget -P /etc/yum.repos.d/ http://mirrors.aliyun.com/repo/Centos-6.repo
--nochroot wget -P /etc/yum.repos.d/ http://mirrors.aliyun.com/repo/epel-6.repo
EOF
