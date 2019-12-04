echo "View /var/log/ansible.log"

VAGRANT_VAGRANTFILE=loadbalancer-Vagrantfile vagrant up &
VAGRANT_VAGRANTFILE=dataserver-Vagrantfile vagrant up &
VAGRANT_VAGRANTFILE=jira-Vagrantfile vagrant up &
VAGRANT_VAGRANTFILE=crowd-Vagrantfile vagrant up &
VAGRANT_VAGRANTFILE=confluence-Vagrantfile vagrant up &
VAGRANT_VAGRANTFILE=bitbucket-Vagrantfile vagrant up &
VAGRANT_VAGRANTFILE=bamboo-Vagrantfile vagrant up  &
VAGRANT_VAGRANTFILE=fisheye-Vagrantfile vagrant up &
VAGRANT_VAGRANTFILE=crucible-Vagrantfile vagrant up &

echo "View /var/log/ansible.log"
echo "Waiting for boxes to launch"
sleep 400

ansible all -m setup --tree out/

ansible-cmdb out/ > overview.html

echo "Refresh and/or rerun: ansible -i hosts -m setup --tree out/ all ; ansible-cmdb out/ > overview.html and refresh"
chromium file:///$(pwd)/overview.html
