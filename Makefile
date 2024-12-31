.PHONY: run
start:
	ansible-rulebook --rulebook webhook-example.yml -i inventory/inventory.yml -vvvv
curl:
	curl -H 'Content-Type: application/json' -d "{\"message\": \"Ansible is super cool\"}" 127.0.0.1:5000/endpoint
create_multipass_vm:
	multipass launch 22.04 --name  microanpr	
sshkey_multipass:
	cat ~/.ssh/*.pub | multipass exec microanpr -- tee -a .ssh/authorized_keys
vars:
	ansible -m debug -a var=hostvars all  