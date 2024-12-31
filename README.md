### Requirements

``` shell
sudo apt-get --assume-yes install openjdk-17-jdk python3-pip
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$PATH:~/.local/bin
pip3 install ansible ansible-rulebook ansible-runner

ansible-rulebook --rulebook webhook-example.yml -i inventory/local --verbose
```