#!/bin/bash -eux

# Decrypts Ansible Vault proected files

# Copy vault password file outside of directory
cp deploy.vault ~/deploy.vault
# Make sure vault password file is not marked as executible or Ansible will cry
chmod -x ~/deploy.vault

ansible-vault decrypt group_vars/wordpress/vault.yml --vault-password-file ~/deploy.vault
