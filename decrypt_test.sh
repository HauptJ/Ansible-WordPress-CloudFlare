#!/usr/bin/env bash

# Decrypts Ansible Vault proected files

# Copy vault password file outside of directory
cp vault_test.txt ~/vault_test.txt
# Make sure vault password file is not marked as executible or Ansible will cry
chmod -x ~/vault_test.txt

# Run in Ansible directory
sudo su
ansible-vault decrypt group_vars/wordpress/vault.yml --vault-password-file ~/vault_test.txt
su vagrant
