FROM centos

RUN yum install -y httpd unzip

ENV TEMPLATES free-css-templates

WORKDIR /var/www/html/

ADD https://www.free-css.com/assets/files/$TEMPLATES/download/page264/host-cloud.zip ./adio.zip

RUN unzip adio.zip && mv templatemo_541_host_cloud/* . && \
    echo $TEMPLATES > ./env.html

CMD /usr/sbin/apachectl -DFOREGROUND

