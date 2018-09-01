FROM centos7
LABEL maintainer="Alessandro Dolci dolci.alessandro94@gmail.com"

RUN yum update -y && yum install nginx -y
RUN systemctl enable nginx

COPY bootstrap.sh /opt/bootstrap.sh
COPY ssl.sh /opt/ssl.sh

ENTRYPOINT ["/opt/bootstrap.sh"]
