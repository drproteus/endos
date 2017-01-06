#!/bin/bash

set -e -u

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

! id operator && usermod -s /usr/bin/zsh root
cp -aT /etc/skel/ /root/
chmod 700 /root
! id operator && useradd -m -p "" -g users -G "adm,audio,floppy,log,network,rfkill,scanner,storage,optical,power,wheel" -s /usr/bin/zsh operator

sed -i "s/#\(PermitRootLogin \).\+/\1yes/" /etc/ssh/sshd_config
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
sed -i "s/#\(Storage=\)auto/\1volatile/" /etc/systemd/journald.conf

sed -i "s/#\(HandleSuspendKey=\)suspend/\1ignore/" /etc/systemd/logind.conf
sed -i "s/#\(HandleHibernateKey=\)hibernate/\1ignore/" /etc/systemd/logind.conf
sed -i "s/#\(HandleLidSwitch=\)suspend/\1ignore/" /etc/systemd/logind.conf

sed -i "s/# \(autologin=\)dgod/\1operator/" /etc/lxdm/lxdm.conf
sed -i "s/# \(session=\)\/usr\/bin\/startlxde/\1\/usr\/bin\/startxfce4/" /etc/lxdm/lxdm.conf


systemctl enable pacman-init.service choose-mirror.service
systemctl enable lxdm.service
systemctl enable NetworkManager.service
systemctl set-default graphical.target

pip install virtualenv
pip install virtualenvwrapper
pip install youtube-dl

echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
