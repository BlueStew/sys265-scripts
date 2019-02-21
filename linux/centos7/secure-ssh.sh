#SECURE-SSH.SH
#AUTHOR BLUESTEW
#Creates a new ssh user called $1
#Adds a public key to that users authorized keys file
#Removes roots abilty to ssh in
 useradd test1
mkdir /home/test1/.ssh
cp /home/jonathan/sys265-scripts/linux/public-keys/sys265.pub /home/test1/.ssh/authorized_keys
chmod 700 /home/test1/.ssh
chmod 600 /home/test1/.ssh/authorized_keys
chown -R test1:test1  /home/test1/.ssh

echo "testing 123"
