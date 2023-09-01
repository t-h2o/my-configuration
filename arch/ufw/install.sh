# set as the Arch community said
ufw default deny
ufw enable
ufw status verbose

# launch the mess
systemctl start ufw 
systemctl enable ufw 
