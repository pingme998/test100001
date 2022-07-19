FROM developeranaz/qbittorrent2rclone:beta1
ARG DEBIAN_FRONTEND=noninteractive
#FROM developeranaz/qbittorrent-rclone-heroku
RUN apt update 
RUN apt upgrade
#RUN apt install unzip 
#RUN apt install qbittorrent-nox -y
#curl -y
RUN apt install nginx -y
RUN apt install supervisor -y
COPY scriptplusconf /scriptplusconf
COPY qBconf.tar.gz /qBconf.tar.gz
RUN tar xvf /qBconf.tar.gz
RUN chmod +x /scriptplusconf/entrypoint2.sh
RUN chmod +x /scriptplusconf/entrypoint1.sh
CMD /scriptplusconf/entrypoint2.sh
