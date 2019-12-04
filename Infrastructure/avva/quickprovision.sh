echo "View /var/log/ansible.log"
echo "Provisioning..."

VAGRANT_VAGRANTFILE=loadbalancer-Vagrantfile vagrant provision &
VAGRANT_VAGRANTFILE=dataserver-Vagrantfile vagrant provision &
VAGRANT_VAGRANTFILE=jira-Vagrantfile vagrant provision &
VAGRANT_VAGRANTFILE=crowd-Vagrantfile vagrant provision &
VAGRANT_VAGRANTFILE=confluence-Vagrantfile vagrant provision &
VAGRANT_VAGRANTFILE=bitbucket-Vagrantfile vagrant provision &
VAGRANT_VAGRANTFILE=bamboo-Vagrantfile vagrant provision &
VAGRANT_VAGRANTFILE=fisheye-Vagrantfile vagrant provision &
VAGRANT_VAGRANTFILE=crucible-Vagrantfile vagrant provision &

echo "View /var/log/ansible.log"
