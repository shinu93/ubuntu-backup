FROM centos

RUN yum update -y && \
    yum install -y openssh-server
RUN yum install -y python3

RUN echo "root:12345" | chpasswd && \
    mkdir /root/.ssh

COPY remote-key.pub /root/.ssh/authorized_keys

RUN chown root:root -R /root/.ssh/ && \
    chmod 700 /root/.ssh/ && \
    chmod 600 /root/.ssh/authorized_keys

EXPOSE 22

RUN ssh-keygen -A

CMD /usr/sbin/sshd -D
    
