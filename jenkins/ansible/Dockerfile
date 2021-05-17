FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y ansible python3-pip sshpass git openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN mkdir /ansible && \
    mkdir -p /etc/ansible && \
    echo 'localhost' > /etc/ansible/hosts

WORKDIR /ansible

CMD ["ansible-playbook", "--version"]


