FROM ubuntu:trusty
MAINTAINER Pieter Martens "pieter@cg.nl"


# Create application environment
COPY . /library_3p
WORKDIR /library_3p

# Set correct ownership
RUN chown -Rf www-data:www-data /library_3p

# Create mount point
VOLUME /library_3p
