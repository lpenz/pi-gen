#!/bin/bash

set -e -x

on_chroot << EOF
ansible-pull -U https://github.com/lpenz/ansible-playbooks.git -i localhost, -c local --extra-vars='ansible_python_interpreter=/usr/bin/python3' playbook-sudo.yml
EOF

