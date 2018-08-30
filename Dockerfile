FROM centos:7

MAINTAINER alfin hidayat(https://github.com/kahidna)

RUN yum install -y httpd php php-gd php-mbstring git

RUN cd /var/www/html &&  git clone https://github.com/kalcaddle/KodExplorer

RUN groupmod -g 212 tape && groupmod -g 33 apache && usermod -u 33 apache

RUN mv /var/www/html/KodExplorer/ /var/www/html/explorer 

RUN chown -R apache:apache /var/www/html/explorer && chmod -R 777 /var/www/html/explorer/

EXPOSE 80 443

CMD /usr/sbin/apachectl -d /var/www/html/ -f /etc/httpd/conf/httpd.conf -e info -DFOREGROUND
