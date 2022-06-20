#All commands here are run as root automatically by EnOS.

#Install opendoas
pacman -Syu --no-confirm opendoas

#Add chaotic AUR to save ourselves in the long run.
pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
#Crude hack to add Chaotic AUR to repo list.
echo [chaotic-aur] >> /etc/pacman.conf
echo Include = /etc/pacman.d/chaotic-mirrorlist >> /etc/pacman.conf
