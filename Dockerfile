FROM centos
LABEL project2=apache-web
MAINTAINER Vijaya
RUN yum update -y
#RUN apt-get install java* -y
RUN yum install httpd -y
COPY . /var/www/html
HEALTHCHECK CMD --fail https:\\localhost:80 || exit 1
CMD ["httpd", "-DFOREGROUND"]
EXPOSE 80
