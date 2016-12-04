#!/bin/bash
#ansible-playbook site.yml -i hosts -c paramiko

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

ansible-playbook --limit="all" --inventory-file=$DIR/hosts --sudo -v $DIR/site_apps.yml $@