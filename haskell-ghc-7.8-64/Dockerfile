# build with
#  docker build -t 'alanz/haskell-ghc-7.8-64' .

FROM debian:testing

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

####### GHC 7.8.1-rc2 ######################

RUN echo "deb http://cdn.debian.net/debian/ experimental main" >> /etc/apt/sources.list
RUN echo "deb http://cdn.debian.net/debian/ testing main" >> /etc/apt/sources.list

RUN apt-get update

# RUN apt-cache search ghc | grep -v libghc

RUN apt-get install -y -t experimental ghc

RUN ghc --version

######### cabal-install ################################################

#RUN echo "1" && apt-get update
#RUN echo "2" && apt-get update

RUN apt-get -y install zlib1g-dev wget

RUN wget http://hackage.haskell.org/package/cabal-install-1.18.0.3/cabal-install-1.18.0.3.tar.gz
RUN tar xvfz cabal-install-1.18.0.3.tar.gz
RUN cabal-install-1.18.0.3/bootstrap.sh
RUN rm -fr cabal-install-1.18.0.3*

