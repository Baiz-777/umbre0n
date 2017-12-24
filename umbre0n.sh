open ssh_rd.jar
echo "Connect your device to DFU mode and press enter to continue"
read NULL
echo "Mounting rootfs..."
sshpass -p alpine ssh -p 2022 root@localhost mount.sh
echo "Done"
echo "Deleting Setup.app..."
sftp -p -oPort=2022 root@localhost <<del
rm /mnt1/Applications/Setup.app/*
del
echo "Done"
echo "Successfully Bypassed iCloud Activation Lock!"
echo "====================================="
echo "Tool created by Umbre0n (@DanielD3V)"
echo "====================================="