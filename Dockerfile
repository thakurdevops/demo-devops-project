FROM centos:latest
MAINTAINER mandeep.singh@gmail.com
RUN yum install -y httpd \
          zip \
         unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/rocket-internet.zip
WORKDIR /var/www/html
RUN unzip rocket-internet.zip
RUN cp -rvf rocket-internet/* /var/www/html/
RUN rm -rf rocket-internet.zip
CMD ["/usr/sbin/httpd", "-D", FOREGROUND"]
EXPOSE 80
