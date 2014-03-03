FROM debian:testing

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

####### GHC 7.8.1-rc2 ######################
#RUN apt-get update


#RUN apt-add-repository "deb http://cdn.debian.net/debian/ experimental main"
RUN echo "deb http://cdn.debian.net/debian/ experimental main" >> /etc/apt/sources.list
RUN echo "deb http://cdn.debian.net/debian/ testing main" >> /etc/apt/sources.list

RUN apt-get update

# RUN apt-cache search ghc | grep -v libghc

#RUN apt-get install -y -t testing libc6
RUN apt-get install -y -t experimental ghc

RUN ghc --version
