FROM nicoyjw/centos6-lamp:v1

MAINTAINER nicoyjw "545315118@qq.com"

USER root

RUN service httpd start && service mysqld start

RUN mysqladmin -u root -p password "test123"

EXPOSE 80 3306

ADD abc.txt

VOLUME ["/var/www/html/erp","/var/www/html"]

ENV WEBAPP_PORT=9000

ENTRYPOINT ["ls"]

CMD ["-a","-l"]

ONBUILD RUN echo "on build excuted" >> onbuild.txt
