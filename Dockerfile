From ubuntu
RUN apt-get update -y
RUN apt-get -y install apache2
RUN echo "Welcome to my Apache server......... " > /var/www/html/index.html
EXPOSE 80
CMD ["usr/sbin/apache2ctl", "-D" ,"FOREGROUND"]
