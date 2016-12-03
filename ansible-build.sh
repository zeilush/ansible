#!/bin/bash
#ansible-playbook site.yml -i hosts -c paramiko

ansible-playbook --limit="all" --inventory-file=hosts --sudo -v site.yml