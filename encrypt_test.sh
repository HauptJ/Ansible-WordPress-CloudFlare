#!/usr/bin/env bash

# Copy vault password file outside of directory
cp deploy.vault ~/vault_test.txt
# Make sure vault password file is not marked as executible or Ansible will cry
chmod -x ~/vault_test.txt

# Run in Ansible directory
sudo su
ansible-vault encrypt group_vars/wordpress/vault.yml --vault-password-file ~/vault_test.txt
su vagrant
