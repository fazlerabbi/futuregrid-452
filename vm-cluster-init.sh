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

SETUP_COMMANDS="sudo apt-get update; sudo apt-get install git; "
SETUP_COMMANDS+="cd /home/ubuntu; "
SETUP_COMMANDS+="mkdir .projects; cd .projects; "
SETUP_COMMANDS+="git clone https://github.com/fazlerabbi/futuregrid-452.git"

for i in ${VM_LIST[@]}; do   
   echo "Initial setup of " ${i}
   echo "---------------------------------------------"
   ssh ubuntu@${i} "${SETUP_COMMANDS}"
done
