
# Usage

Edit server(s) list, by modifying `hosts` file:

```
[nodes]
linux0 ansible_host=192.168.3.3
linux1 ansible_host=192.168.3.4
```

Edit SSH key location and default username in `group_vars/nodes/vars.yml`:
```
---
ansible_user                 : username
ansible_ssh_private_key_file : ~/.ssh/my-key.pem
```

Put all relevant data to `group_vars/nodes/vault.yml` and encrypt it

```
vault_ansible_sudo_pass : sudo-password
vault_proxy_username    : proxy-username
vault_proxy_password    : proxy-password
vault_student_password  : student-password
```

