From ubuntu
RUN apt-get update
RUN apt-get -y install apache2
RUN echo "Welcomes to freshers training session" > /var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
