#SECURE-SSH.SH
#AUTHOR BLUESTEW
#Creates a new ssh user called $1
#Adds a public key to that users authorized keys file
#Removes roots abilty to ssh in
#!/bin/bash
useradd $1
mkdir /home/$1/.ssh
cp /home/jonathan/sys265-scripts/linux/public-keys/sys265.pub /home/$1/.ssh/authorized_keys
chmod 700 /home/$1/.ssh
chmod 600 /home/$1/.ssh/authorized_keys
chown -R $1:$1  /home/$1/.ssh

echo "testing 123"
