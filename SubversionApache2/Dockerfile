FROM ubuntu/apache2:2.4-21.10_beta

RUN apt-get update
RUN apt install nano
RUN apt-get -y install subversion libapache2-mod-svn libsvn-dev \
    && a2enmod dav dav_svn 

RUN touch /etc/apache2/dav_svn.passwd \
    && htpasswd -mb /etc/apache2/dav_svn.passwd admin admin

RUN a2enmod ssl \
    && mkdir /etc/apache2/ssl 
RUN openssl req -new -x509 -days 365 -nodes -out /etc/apache2/ssl/apache.pem -keyout /etc/apache2/ssl/apache.key -subj "/C=BG/ST=/L=Plovdiv/O=Repulse/OU=DEV/CN=SVN Server" 


COPY dav_svn.conf /etc/apache2/mods-enabled/dav_svn.conf
COPY Startup.sh /var/lib/Startup.sh
COPY ports.conf /etc/apache2/ports.conf
COPY default-ssl.conf /etc/apache2/sites-available/default-ssl.conf

RUN a2ensite default-ssl

ENTRYPOINT /var/lib/Startup.sh