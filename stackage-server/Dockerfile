# build with
#  docker build -t 'alanz/stackage-server' .
#
# To inspect the build container
#  docker run -i -t alanz/stackage-server bash
#
# Running the database
#  docker run --name my-postgres -e POSTGRES_USER=stackage_server -e POSTGRES_PASSWORD=password -d postgres
#
# Running the app that connects to it
#  docker run --name stackage --link my-postgres:postgres -d application-that-uses-postgres
#  docker run --name stackage --link my-postgres:postgres -p 3000:3000 -i -t alanz/stackage-server bash

FROM alanz/haskell-ghc-7.8-64

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

######### make sure base image is current ##############################

RUN echo "0" && apt-get update

RUN echo "0" && apt-get -y dist-upgrade

RUN apt-get -y install libpq-dev
RUN apt-get -y install libstdc++-4.9-dev g++
RUN apt-get -y install postgresql-common

########### Set up stackage-server in the cabal file ######################

# First make sure we have a config file
ENV PATH $PATH:/.cabal/bin

RUN cabal update

# From https://github.com/fpco/stackage-server
ENV STACKAGE remote-repo: stackage-35ecbe20461b5fe50bad1e5653f6660132861fe9:http://www.stackage.org/stackage/35ecbe20461b5fe50bad1e5653f6660132861fe9

RUN sed -i "s@remote-repo:.*@${STACKAGE}@" /.cabal/config

# To be sure, blow away existing .ghc cache
RUN rm -fr /.ghc

RUN cabal update
# Get the stackage snapshot cabal version
RUN cabal install cabal-install

## We have downgraded cabal, generate a fresh config file
RUN rm /.cabal/config
RUN cabal update
RUN sed -i "s@remote-repo:.*@${STACKAGE}@" /.cabal/config
RUN rm -fr /.ghc
RUN cabal update

RUN cabal install alex
RUN cabal install happy


#############
RUN git clone https://github.com/fpco/stackage-server.git

RUN (cd stackage-server && cabal install --dependencies-only)
RUN (cd stackage-server && cabal install)

RUN apt-get -y install postgresql-client

COPY postgresql.yml stackage-server/config/postgresql.yml
COPY settings.yml   stackage-server/config/settings.yml
COPY run-stackage.sh run-stackage.sh

EXPOSE 3000
ENTRYPOINT exec /run-stackage.sh
