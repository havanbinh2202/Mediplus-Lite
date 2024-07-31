# FROM nginx

# COPY . /usr/share/nginx/html

FROM centos:centos7
RUN yum update -y \
    && yum insall httpd httpd-tools -y \
    && yum install vim -y \
    && yum install epel-release -y \
    && yum update -y \
    && yum install htop -y
WORKDIR /var/www/html
EXPOSE 80
ADD . /var/www/html/
ENTRYPOINT [ "httpd" ]
CMD [ "-D","FOREGROUND" ]