FROM debian:squeeze

MAINTAINER info.inspectit@novatec-gmbh.de

ENV INSPECTIT_VERSION 1.6.4.69

RUN apt-get update && apt-get install -y wget unzip libgtk2.0-0 libxtst6 libcanberra-gtk-module xulrunner-1.9.1 \	
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN wget ftp://ntftp.novatec-gmbh.de/inspectit/releases/RELEASE.${INSPECTIT_VERSION}/inspectit-linux.gtk.x86_64.zip -qO /opt/inspectit.zip \
	&& unzip /opt/inspectit.zip \
	&& rm /opt/inspectit.zip

CMD /inspectit/inspectIT
