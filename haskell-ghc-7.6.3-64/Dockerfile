FROM alanz/debian-base-64

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

####### GHC 7.6.3 ######################

RUN wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-x86_64-unknown-linux.tar.bz2

RUN tar xvfj ghc-7.6.3-x86_64-unknown-linux.tar.bz2
RUN cd ghc-7.6.3 && ./configure
RUN cd ghc-7.6.3 && make install

# Clean up
RUN rm -fr ghc-7.6.3-x86_64-unknown-linux.tar.bz2 ghc-7.6.3

######### cabal-install ################################################

#RUN echo "1" && apt-get update
#RUN echo "2" && apt-get update

RUN apt-get -y install zlib1g-dev wget

RUN wget http://www.haskell.org/cabal/release/cabal-install-1.20.0.2/cabal-install-1.20.0.2.tar.gz
RUN tar xvfz cabal-install-1.20.0.2.tar.gz
RUN (cd cabal-install-1.20.0.2 && ./bootstrap.sh)
RUN rm -fr cabal-install-1.20.0.2*


