FROM alanz/haskell-ghc-7.4.2-64

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

##### haskell platform 2012.4.0.0 ######

RUN wget http://www.haskell.org/platform/download/2012.4.0.0/haskell-platform-2012.4.0.0.tar.gz

RUN tar xvfz haskell-platform-2012.4.0.0.tar.gz

RUN cd haskell-platform-2012.4.0.0 && ./configure
RUN cd haskell-platform-2012.4.0.0 && make
RUN cd haskell-platform-2012.4.0.0 && make install

# Clean up
RUN rm -fr haskell-platform-2012.4.0.0.tar.gz haskell-platform-2012.4.0.0

