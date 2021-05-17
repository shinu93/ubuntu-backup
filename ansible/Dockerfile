FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && \
    apt upgrade -y && \
    apt install python3 -y && \
    apt install python3-pip -y

RUN apt install openssh-server -y

RUN echo "root:12345" | chpasswd && \
    mkdir /root/.ssh

RUN mkdir /var/run/sshd

COPY remote-key.pub /root/.ssh/authorized_keys

EXPOSE 22

CMD /usr/sbin/sshd -D
