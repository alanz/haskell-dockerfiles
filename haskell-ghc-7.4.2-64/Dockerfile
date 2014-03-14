FROM alanz/debian-base-64

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

####### GHC 7.4.2 ######################

RUN wget http://www.haskell.org/ghc/dist/7.4.2/ghc-7.4.2-x86_64-unknown-linux.tar.bz2

RUN tar xvfj ghc-7.4.2-x86_64-unknown-linux.tar.bz2

RUN cd ghc-7.4.2 && ./configure
RUN cd ghc-7.4.2 && make install

# Clean up
RUN rm -fr ghc-7.4.2-x86_64-unknown-linux.tar.bz2 ghc-7.4.2

