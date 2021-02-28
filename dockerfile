FROM ubuntu
#Update and Upgrade apt
RUN apt-get update

#Install Apache, MySQL and PHP
RUN apt-get install -y apache2
RUN apt-get install curl
RUN apt-get install php libapache2-mod-php php-mcrypt php-mysql
RUN systemctl restart apache2
RUN apt-get install php-cli

#Install GIT for website
RUN apt-get install git
RUN cd /var/www/html/
RUN git clone https://github.com/SamP10/UniVulnerableWebsite.git
RUN systemctl restart apache2
EXPOSE 80 8080