.PHONY: run
start:
	ansible-rulebook --rulebook webhook-example.yml -i inventory/local --verbose
curl:
	curl -H 'Content-Type: application/json' -d "{\"message\": \"Ansible is super cool\"}" 127.0.0.1:5000/endpoint
