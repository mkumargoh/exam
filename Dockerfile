FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install clean
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80
