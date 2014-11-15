#!/bin/bash

echo "Reading VM IP list"
echo "------------------------------------"

declare -a VM_LIST
VM_INDEX=0	

mkfifo VM_LIST_PIPE
nova list | fgrep "frabbi" | cut -d '|' -f7 | cut -d '=' -f2 > VM_LIST_PIPE &

while read vm_ip; do
   echo "Found VM IP" $vm_ip
   VM_LIST[$VM_INDEX]=$vm_ip
   VM_INDEX=$(( $VM_INDEX + 1 ))
done < VM_LIST_PIPE

# remove the VM_LIST_PIPE
rm VM_LIST_PIPE

echo "The Scipt will do initial setup on each VM"
echo "------------------------------------"

#echo -n "Enter the passphrase for SSH key [ENTER]: "
#read PASS_PHRASE

# SETUP_COMMANDS="sudo apt-get update; sudo apt-get install git; "
SETUP_COMMANDS=""
VM_INDEX=1
for i in ${VM_LIST[@]}; do
   #SETUP_COMMANDS+="echo $i ' frabbi-00'$VM_INDEX'.novalocal' ' frabbi-00'$VM_INDEX | sudo tee -a /etc/hosts; "
   VM_INDEX=$((VM_INDEX + 1)) 
done

#SETUP_COMMANDS+="cd /home/ubuntu; "
#SETUP_COMMANDS+="mkdir .projects; cd .projects; "
#SETUP_COMMANDS+="git clone https://github.com/fazlerabbi/futuregrid-452.git; "

#SETUP_COMMANDS+="sudo ssh-keygen -t rsa -N '' -f /root/.ssh/id_rsa; "
SETUP_COMMANDS+="sudo cp /root/.ssh/id_rsa.pub /tmp/id_rsa.pub; "

for i in ${VM_LIST[@]}; do   
   echo "Initial setup of " ${i}
   echo "---------------------------------------------"
   #ssh ubuntu@${i} "${SETUP_COMMANDS}"
done


echo "SCP the ssh public key files from each VM"
echo "-------------------------------------------"

#mkdir .vm_public_keys 

#for i in ${VM_LIST[@]}; do   
   #scp ubuntu@${i}:/tmp/id_rsa.pub ./vm_public_keys/id_rsa.pub.${i}
#done


echo "Adding SSH public keys to the authorized_keys file on each VM"
echo "---------------------------------------------------------"

# combine the file contents into a single file
#find ./.vm_public_keys -type f -exec cat {} + >> ./.vm_public_keys/id_rsa.pub.combine

#for i in ${VM_LIST[@]}; do
#   scp ./.vm_public_keys/id_rsa.pub.combine ubuntu@${i}:/tmp/id_rsa.pub.combine
#   ssh ubuntu@${i} "cat /tmp/id_rsa.pub.combine | sudo tee -a /root/.ssh/authorized_keys > >/dev/null"
#done


