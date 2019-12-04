#!/bin/bash
# Launch a bunch of VirtualBox VMs to support a demo Atlassian environment
#
# William <william@a9group.net>
# Mon Sep 17 22:50:08 PDT 2018
# Part of Avva
# https://bitbucket.org/wkennedy/avva
################################################################################

echo "--------------------------------------------------------------------------------"
echo "If there are a heap of failures here, be sure you've properly set up Vagrant and VirualBox on this host."
echo "You need at least 8GB of RAM to launch all machines. Reduce the load by commenting out lines in this file; $0"
echo "--------------------------------------------------------------------------------"

echo "Launching Crowd..."
VAGRANT_VAGRANTFILE=crowd-Vagrantfile vagrant up 

echo "Launching Confluence..."
VAGRANT_VAGRANTFILE=confluence-Vagrantfile vagrant up 

echo "Launching Bitbucket..."
VAGRANT_VAGRANTFILE=bitbucket-Vagrantfile vagrant up 

echo "Launching Bamboo..."
VAGRANT_VAGRANTFILE=bamboo-Vagrantfile vagrant up  

echo "Launching Fisheye/Crucible..."
VAGRANT_VAGRANTFILE=fecru-Vagrantfile vagrant up 

echo "Launching Jira"
VAGRANT_VAGRANTFILE=jiracore-Vagrantfile vagrant up 
