#!/bin/bash

echo -e "\nDate & Time Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
date >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nMounted Filesystems:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
df -Th >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nBlock IDs Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
blkid >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nDisks Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
fdisk -l >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nBlock Storage Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
lsblk >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nVolume Groups Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
vgdisplay >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nLogical Volume Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
lvdisplay >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nMultipathing Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
multipath -ll >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nNetwork Interfaces:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
ifconfig -a >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nSystem Memory:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
free -m >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nUptime Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
uptime >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nGRUB Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
cat /etc/grub2.cfg >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nProcesses Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
ps -elf >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nResource Utilization & Processes Details:" >>/home/john/"precheck_$(date +"%d-%m-
%Y").txt"
top -bn 1 2>&1 1 >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nRouting Table Information:" >>/home/john/"precheck_$(date +"%d-%m-%Y").txt"
route -n >>/home/john/"precheck_$(date +"%d-%m-%Y").txt" 2>&1
echo -e "\nRouting Table Information:" >>/root/"precheck_$(date +"%d-%m-%Y").txt"
cat /etc/fstab >>/root/"precheck_$(date +"%d-%m-%Y").txt" 2>&1