#!/usr/bin/env bash

# Run in Ansible directory
sudo su
ansible-vault encrypt group_vars/site/vault.yml --vault-password-file ~/vault_test.txt
ansible-vault encrypt group_vars/wordpress/vault.yml --vault-password-file ~/vault_test.txt
su vagrant
