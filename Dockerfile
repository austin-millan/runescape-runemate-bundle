FROM ubuntu:18.04
LABEL version "0.2"
LABEL description "Runs your favorite MMORPG (OldSchool RuneScape) and botting client (RuneMate) in a Docker container!"

ENV DEBIAN_FRONTEND noninteractive

# Dependencies for OSRS Installation
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    wget \
    alsa-utils \
    packagekit-gtk3-module \
    libcanberra-gtk-module \
    libasound2-plugins \
    libcanberra-pulse \
    msitools
COPY scripts/update_osrs.sh /usr/local/bin/update_osrs
COPY scripts/update_runemate.sh /usr/local/bin/update_runemate
RUN chmod +x /usr/local/bin/update_osrs
RUN chmod +x /usr/local/bin/update_runemate
RUN update_osrs
RUN update_runemate
CMD ["/bin/bash", "oldschool & RuneMate"]
