MY_PASSWD="my_passwd"
MY_WLAN="my_wlan"

systemctl start NetworkManager
systemctl enable NetworkManager
systemctl status NetworkManager
nmcli device wifi list
nmcli device wifi connect $MY_WLAN password $MY_PASSWD
