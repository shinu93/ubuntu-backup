FROM ubuntu

LABEL MAINTAINER=shridharkc93@gmail.com
LABEL NAME=shridhar

RUN apt-get -y update && \
    apt install openssh-server -y && \
    apt-get install python3 -y

ARG DEBIAN_FRONTEND=noninteractive

RUN adduser ansibleuser && \
    echo "ansibleuser:12345" | passwd ansibleuser && \
    mkdir /home/ansibleuser/.ssh

COPY ansible.pub /home/ansibleuser/.ssh/authorized_keys
  
RUN chmod 700 /home/ansibleuser/.ssh && \
    chmod 600 /home/ansibleuser/.ssh/authorized_keys

CMD /usr/sbin/sshd -DFOREGROUND
    
    



