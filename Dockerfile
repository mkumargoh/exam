From ubuntu
RUN apt-get update -y
RUN apt-get -y install apache2
RUN apt-get install -y apache2-utils
EXPOSE 80
CMD ["apache2ctl", "-D" ,"FOREGROUND"]
