# docker build --file Dockerfile-8.4.2rc1 -t alanz/haskell-8.4.2rc1 .
# Creates user hare

from ubuntu:xenial
maintainer Alan Zimmerman <alan.zimm@gmail.com>

# Based (loosely) on https://github.com/gregwebs/ghc-docker-dev/blob/master/Dockerfile


RUN apt-get update && apt-get install -y \
  # Needed for adding the PPA key
  gnupg \
  gpgv \
  sudo

## add ppa for ubuntu trusty haskell packages
# from darinmorrison/haskell
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F6F88286 \
  && echo 'deb     http://ppa.launchpad.net/hvr/ghc/ubuntu xenial main' >> /etc/apt/sources.list.d/haskell.list \
  && echo 'deb-src http://ppa.launchpad.net/hvr/ghc/ubuntu xenial main' >> /etc/apt/sources.list.d/haskell.list

RUN apt-get update && apt-get install -y libgmp-dev curl

RUN curl -sSL https://get.haskellstack.org/ | sh

ENV LANG     C.UTF-8
ENV LC_ALL   C.UTF-8
ENV LANGUAGE C.UTF-8


RUN apt-get install -y \
  cabal-install-2.2 \
  ghc-8.4.2 \
  happy \
  alex

RUN apt-get install -y  \
  ncurses-dev \
  libtinfo-dev

RUN useradd -m -d /home/hare -s /bin/bash hare
# RUN echo "ghc ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/hare && chmod 0440 /etc/sudoers.d/hare
# RUN adduser hare sudo
ENV HOME /home/hare
WORKDIR /home/hare
USER hare

ENV PATH /opt/ghc/8.4.2/bin:/opt/cabal/2.2/bin:/home/hare/.cabal/bin:/home/hare/.local/bin:$PATH

# RUN stack setup 8.4.1

# RUN stack install cabal

# RUN cabal update
