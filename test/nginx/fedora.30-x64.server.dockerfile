FROM fedora:30 AS build
ARG package_name
COPY ./tmp/$package_name .
RUN yum install -y ./$package_name nginx
COPY index.html /usr/share/nginx/html

