# https://medium.com/@SaravSun/running-gui-applications-inside-docker-containers-83d65c0db110
FROM ubuntu:14.04 
RUN apt-get update && \
	apt-get -qqy install apt-transport-https libsdl2-2.0-0 libwebkitgtk-1.0-0 libpng-dev wget libcurl3 gnupg dbus
#	wget http://launchpadlibrarian.net/161405671/libglew1.10_1.10.0-3_amd64.deb && \
#	dpkg -i libglew1.10_1.10.0-3_amd64.deb && \
#	apt-get -f install && \
#	wget -O - https://content.runescape.com/downloads/ubuntu/runescape.gpg.key | apt-key add - && \
#	mkdir -p /etc/apt/sources.list.d && \
#	echo "deb https://content.runescape.com/downloads/ubuntu trusty non-free" > /etc/apt/sources.list.d/runescape.list` && \
#	apt-get update && \
#	apt-get -f install -y --allow-unauthenticated runescape-launcher 

CMD ["/bin/bash"]
