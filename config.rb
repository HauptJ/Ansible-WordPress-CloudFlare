# NOTE: The provided inline shell provisioner will only work with my CentOS 7.4 Vagrant box.
# https://github.com/HauptJ/Vagrant-CentOS-7-HyperV-Gen-2
# If you wish to use another Vagrant box, you will have to uncomment the
# commented out commands. See: Vagrantfile

$centos_box = "hauptj/CentOS74"
$centos_box_ver = "14.4.2018"
$centos_vmname = "CloudPress2"

# NOTE: By default, at least 2 vcpus are required to compile OpenResty from source.
# SEE: group_vars/all.yml.example
# SEE: roles/ansible-role-openresty/defaults/main.yml
$vcpus = "4"

$vmem  = "4096"
