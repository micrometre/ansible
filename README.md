#### This code snippet demonstrates a basic workflow for setting up an event-driven system using Ansible Rulebook:

1. Install necessary software: Install Java, Python, pip3, and the required Ansible packages.

``` shell
sudo apt-get --assume-yes install openjdk-17-jdk python3-pip
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$PATH:~/.local/bin
pip3 install ansible ansible-rulebook ansible-runner

```
2. Start the Ansible Rulebook engine: Run the ansible-rulebook command to start listening for events.

``` shell
ansible-rulebook --rulebook webhook-example.yml -i inventory/inventory.yml --verbose

```

3. Trigger an event: Send a POST request to the specified endpoint.
This will trigger the execution of the defined Ansible playbook, demonstrating a simple event-driven automation scenario.


``` shell
	curl -H 'Content-Type: application/json' -d "{\"message\": \"Ansible is super cool\"}" 127.0.0.1:5000/endpoint
```
 ### Ansible Roles included


1. multipass  
      - Create a Multipass VM	 
2. common 
      - Update and upgarade System  
      - Install required system packages	TAGS: [setupVms]
      users : Create a new regular user with sudo privileges	TAGS: [setupVms]
      users : Set authorized key for remote user	TAGS: [setupVms]
      users : allow 'user dell' to have passwordless sudo	TAGS: [setupVms]
      docker : Install Docker packages.	TAGS: [setupVms]
      docker : Install docker-compose-plugin (with downgrade option).	TAGS: [setupVms]



#### note
###### [Getting Started with Event-Driven Ansible](https://www.redhat.com/en/technologies/management/ansible/trial?sc_cid=7013a000002w14FAAQ&gad_source=1&gclid=CjwKCAiApsm7BhBZEiwAvIu2X-PGQiSFMisp1sLDhVg4b_0aXsaGnVSlV_uEOtLSB61itGlKp_IVexoCeaAQAvD_BwE&gclsrc=aw.ds)