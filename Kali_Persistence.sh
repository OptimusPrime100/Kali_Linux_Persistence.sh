#Connect pendrive to the system
#Format it as FAT32 
#Open Universal USB Tool and select Kali Linux and ISO file and do not format it again
#Let the process complete
#Open Mini Tool and Move/Resize the partition and create a EXT4 partition named "persistence"
#Let the process complete
#Eject the pendrive and shutdown the system
#When the system shuts down connect the pendrive and enter the boot mode
#Select "Live Persistence"
#Let it boot
#Open terminal
#Type the following commands
sudo su
fdisk -l
mkdir -p /mnt/my_usb
mount /dev/sdb2 /mnt/my_usb
echo "/ union" > /mnt/my_usb/persistence.conf
umount /dev/sdb2 && reboot
