# build with
#  docker build -t 'alanz/haskell-ghc-7.8-64' .

FROM alanz/debian-base-64
#FROM debian:testing

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

####### GHC 7.8.2 offical ######################

RUN wget http://www.haskell.org/ghc/dist/7.8.2/ghc-7.8.2-x86_64-unknown-linux-deb7.tar.bz2

RUN tar xvfj ghc-7.8.2-x86_64-unknown-linux-deb7.tar.bz2
RUN cd ghc-7.8.2 && ./configure
RUN cd ghc-7.8.2 && make install

# Clean up
RUN rm -fr ghc-7.8.2-x86_64-unknown-linux-deb7.tar.bz2 ghc-7.8.2

RUN ghc --version

######### cabal-install ################################################

#RUN echo "1" && apt-get update
#RUN echo "2" && apt-get update

RUN apt-get -y install zlib1g-dev wget

RUN wget http://hackage.haskell.org/package/cabal-install-1.18.0.3/cabal-install-1.18.0.3.tar.gz
RUN tar xvfz cabal-install-1.18.0.3.tar.gz
RUN (cd cabal-install-1.18.0.3 && ./bootstrap.sh)
RUN rm -fr cabal-install-1.18.0.3*

