#!/usr/bin/env bash

# Run in Ansible directory
sudo su
ansible-vault decrypt group_vars/wordpress/vault.yml --vault-password-file ~/vault_test.txt
ansible-vault decrypt group_vars/site/vault.yml --vault-password-file ~/vault_test.txt
su vagrant
