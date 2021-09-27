FROM centos:7
RUN yum install -y httpd mod_ssl openssl php php-common php-mbstring  php-xml php-mysqlnd php-gd php-mcrypt php-pdo mysql wget curl cronie vim
ADD index.html /var/www/html/
RUN ln -sf /dev/stdout /var/log/httpd/access_log \
&& ln -sf /dev/stderr /var/log/httpd/error_log
EXPOSE 80 443
CMD ["httpd","-D","FOREGROUND"] 
