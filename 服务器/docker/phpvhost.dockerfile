FROM alpine
MAINTAINER eoe2005

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk add php7  php7-pdo php7-pdo_mysql php7-gd php7-curl php7-calendar php7-ctype php7-dom php7-exif php7-fileinfo php7-ftp php7-gettext php7-gmp  php7-iconv php7-intl php7-json  php7-openssl php7-phar php7-tokenizer php7-xml php7-xmlreader php7-xmlrpc php7-xmlwriter php7-xsl php7-zip php7-soap php7-apache2 php7-bcmath apache2-http2 mariadb ;adduser -D -H mysql;mkdir /mysql ;mkdir /worker ;/usr/bin/mysql_install_db --datadir=/mysql --user=mysql ;sed -i 's/var\/www\/localhost\/htdocs/worker\/htdocs/g' /etc/apache2/httpd.conf 

WORKDIR /worker
EXPOSE 80
ENTRYPOINT ["/usr/bin/mysqld_safe","--datadir=/mysql"]
