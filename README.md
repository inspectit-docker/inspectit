[![](https://badge.imagelayers.io/inspectit/inspectit:latest.svg)](https://imagelayers.io/?images=inspectit/inspectit:latest 'Get your own badge on imagelayers.io')

# Dockerfile for inspectIT APM solution client
This docker file bundles the client of the open source APM solution [www.inspectit.eu](http://www.inspectit.eu).

## Quick Start
The easiest way of starting the client is to execute

```bash
$ docker run -it --rm --name inspectIT-GUI -e DISPLAY -e XAUTHORITY --net=host -v $XAUTHORITY:$XAUTHORITY inspectit/inspectit
```

Now you can connect to a [CMR](https://registry.hub.docker.com/u/inspectit/cmr/). **Please pay attention that CMR and client have the same version number (e.g. both 1.6**, see also section [Running a specific version of the CMR](#running-a-specific-version-of-the-client))).

This container can only be started on linux with X server, boot2docker will not work. In this case you have to get the client from our [download page](http://www.inspectit.eu/download-inspectit/), remember to choose the correct version (Windows, Linux or Mac, 32bit or 64bit).

## Configuration
There is nothing to configure. The container accesses the X socket to show the GUI with the X authority of the current user. This should work on most of the linux distributions (tested with Ubuntu 14.04). If you have problems, please create an [issue](https://github.com/inspectit-docker/inspectit/issues/new).

### Running a specific version of the client
The image inspectit/inspectit:latest always refers to the latest beta version of inspectIT. If you want the latest stable build, please use the image inspectit/inspectit:stable. You can also use a numeric version, please see the available tags. 

## Build the docker image
If you want to build the inspectIT client image yourself, checkout our repository and run 

```bash
$ docker build -t inspectit/inspectit .
```

You need a docker installation or the - fantastic - boot2docker if you are on Windows or Mac

## Issues
If you have problems with this image or any questions feel free to create an [issue](https://github.com/inspectit-docker/inspectit/issues/new) or leave a comment below.

## Contributions
If you wan't to contribute to this image, please look at the sources at [github](https://github.com/inspectit-docker/inspectit) and send us a pull request.
