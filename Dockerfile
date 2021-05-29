From ubuntu
RUN apt-get update -y
ARG DEBIAN_FRONTED=noninteractive
RUN apt-get install -y tzdata
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
EXPOSE 80
CMD ["apache2ctl", "-D" ,"FOREGROUND"]
