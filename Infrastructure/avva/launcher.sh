#!/bin/bash
# Launch a bunch of VirtualBox VMs to support a demo Atlassian environment
#
# William <william@a9group.net>
# Wed Mar 27 17:11:15 PDT 2019
# Part of Avva
# https://bitbucket.org/wkennedy/avva
################################################################################

set -e

main_loop(){
	

		CHOICE=$(whiptail --backtitle "AVVA Launcher 20190325" --menu "AVVA Launch" 0 0 9 1 "Data Server" 2 "Jira" 3 "Confluence" 4 "Bamboo Server" 5 "Crowd" 6 "Bitbucket" 7 "Fisheye/Crucible" 8 "Initialize" 9 "View Atlassian Product Info" 3>&1 1>&2 2>&3)
		exitstatus=$?

		if [ $exitstatus = 0 ]; then

		case $CHOICE in

			1)
				whiptail --msgbox "Launching Data Server" 0 0
				VAGRANT_VAGRANTFILE=dataserver-Vagrantfile vagrant up  &
				main_loop
			;;

			2)
				whiptail --msgbox "Launching Jira" 0 0
				VAGRANT_VAGRANTFILE=jira-Vagrantfile vagrant up &
				main_loop
			;;

			3)
				whiptail --msgbox "Launching Confluence..." 0 0
				VAGRANT_VAGRANTFILE=confluence-Vagrantfile vagrant up &
				main_loop
			;;

			4)
				whiptail --msgbox "Launching Bamboo..." 0 0
				VAGRANT_VAGRANTFILE=bamboo-server-Vagrantfile vagrant up &
				main_loop
			;;


			5)
				whiptail --msgbox "Launching Crowd..." 0 0
				VAGRANT_VAGRANTFILE=crowd-Vagrantfile vagrant up &
				main_loop
			;;

			6)

				whiptail --msgbox "Launching Bitbucket..." 0 0
				VAGRANT_VAGRANTFILE=bitbucket-Vagrantfile vagrant up  &
				main_loop
			;;

			7)
				whiptail --msgbox "Launching Fisheye..." 0 0
				VAGRANT_VAGRANTFILE=fisheye-Vagrantfile vagrant up &
				main_loop
			;; 

			8)
				sh init.sh 
				main_loop
			;;

			9)
				sh versions.sh 
				main_loop
			;;
		esac
	fi
}

main_loop
