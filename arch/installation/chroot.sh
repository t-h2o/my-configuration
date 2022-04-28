# Main setting #################################################################

###	Where you live

region="Europe"
city="Zurich"


### Others

myhostame="panic"
myuser="user"
mypw="1234"


# Main script ##################################################################

### Set time

ln -sf /usr/share/zoneinfo/$region/$city /etc/localtime
hwclock --systohc


### Set keyboard layout

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf


### Set a hostname

echo $myhostame > /etc/hostname


### Create user and set a password

groupadd sudo
useradd -m $myuser
usermod -aG sudo $myuser


### Set mypw for root and user

yes $mypw | passwd
yes $mypw | passwd $myuser
