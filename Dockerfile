FROM centos:latest
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/veggie.zip /var/www/html
WORKDIR /var/www/html
RUN unzip veggie.zip
RUN cp -rvf markups-veggie/* .
RUN rm -rf __MACOSX markups-veggie veggie.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
