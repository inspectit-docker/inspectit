FROM ubuntu:14.04

MAINTAINER info.inspectit@novatec-gmbh.de

ENV INSPECTIT_VERSION 1.6.2.65

RUN apt-get update && apt-get install -y wget unzip libgtk2.0-0 libxtst6 libcanberra-gtk-module
RUN wget ftp://ntftp.novatec-gmbh.de/inspectit/releases/RELEASE.${INSPECTIT_VERSION}/inspectit-linux.gtk.x86_64.zip -qO /opt/inspectit.zip \
	&& unzip /opt/inspectit.zip \
	&& rm /opt/inspectit.zip

CMD /inspectit/inspectIT
