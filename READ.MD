what is the patching
-----------------------------------
patching is nothing but update the kernal verison and also it will fix a source of compliance issues and security vulnerabilities.

my past experinces i worked in the patches manually by using local repo and  using patch management 
tools like (RedHat Satellite Servers, Ansible etc.)

Linux Server Patching Procedure:
--------------------------------------------

In my last organization we will do patching for every Three months
Also we will do patching based on client request
In my last organization we have on server with all repositries readly available.
Submit the change request. It will go to the CAB (Change Advisory Board) for the approval.
while got approval the change request. we need checks console connectivity and ssh connection,

Collect the server pre-patch (pre-checks) details and document them.
----------------------------------------------------------------------------

Check with application/database teams if their any serivecs are running
Check the server backups or snapshot status, it may be VM/physical backups. Involve the 
backup teams for this task.
Then we will collecte the few commnads output by useing scripiting or manually
that commads like
1.uptime
2.uname -r
3.df -Th
4.free
5.cat /etc/fstab
6.top
7.ifconfig
With dmesg check for hardware errors on the server. Any memory or CPU errors should be fixed before 
patching the server.

Before 90 min implement this task we will take downtime with respecte server owner

By using local repo
-----------------------------
Frist we will create the repo file under "/etc/yum.repos.d"
In this file we will following parametrs
[repoid]
baseurl= httpd
gpg check=0
enabled=1

once created the repo.
Then we will use the command
# yum clean all * clear all yum chaches
then we will check the repolist by useing commad
# yum repolist
After we will update the server by useing commad
# yum update all -y

one patching the server. we need to reboot the server
and we will collecte the few commads output for postchechs

Automaction tools
--------------------------------

Applying the patches automatically:
To apply the patches automatically we need any of the tools like ansible, RedHat Satellite 
Server etc. in case of large number of machines. We will do it using ansible, pre-check and postcheck operations will also be performed automatically
RedHat Satellite Servers

i didn't get a changes worked on the satellite servers patching but i know how to process,

frist we will check server subscription or by useing redhat satellite tool or #subscription-manager -registor
we will registor by useing commad
#subscription-manager registor --username -username
#subscription-manager registor --passwd -password
#subscription-manager attach --auto  * attach the all repositries

then we will useings commads
# yum clean all
# yum repolist
# yum update all -y


Ansible
--------------------

push the repositries all nodes once it is completed

we will ping the all nodes by useing rum yaml playbook the in asible server by usieng commad # ansible -m all ping
we will rum the pacthing playbook by useing commnad #ansible-playbook all playbook.yaml

aslo use ansible-tower


###########################################
Managing (installing/updating/downgrading/removing) only one or few packages at a time. Login 
to the server which you are going to patch and execute the commands from the root user account 
or with sudo (if doing it from normal user account).
# dnf clean all
# dnf repolist all
# dnf check-update
# dnf list all
# dnf update podman -y
# dnf list installed podman
# rpm -qi podman
# dnf downgrade podman -y 
# dnf history
# dnf history info
# dnf history info 1
# dnf history info 2
# dnf list installed zsh
# dnf install -y zsh
# dnf list installed zsh
# dnf history
# dnf history info
# dnf history info 6
# dnf history undo 6
# dnf list installed zsh
# reboot

#####################################
 
Managing (installing/updating/downgrading/removing) all the packages at a time.
# dnf clean all
# dnf repolist all
# dnf check-update
# dnf update -y
# reboot
In case if we need to downgrade or undo the changes, we can restore the machine from the 
backup. Because dnf history undo won’t work many times in case of applying all the available 
patches. You can try below commands for the same but better to restore the machine from the 
backup in case of undoing the changes. (because that is easy as well as time saving.) 
# dnf history
# dnf history info
# dnf history info 8
# dnf history undo 8
To exclude any package(s) during patching, execute the following command.
# dnf update -y --exclude=package1,package2,package3







