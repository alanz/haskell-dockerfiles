FROM debian

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

####### GHC xxxx ######################

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y bzip2
RUN apt-get install -y libncursesw5
RUN apt-get install -y gcc apt-utils
RUN apt-get install -y apt-utils
RUN apt-get install -y make

RUN apt-get install -y libgmp-dev
RUN ln -s /usr/lib/x86_64-linux-gnu/libgmp.so /usr/lib/x86_64-linux-gnu/libgmp.so.3

##### haskell platform 2012.4.0.0 ######

RUN apt-get install -y dialog

RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libgl1-mesa-dev
RUN apt-get install -y libglu1-mesa-dev
RUN apt-get install -y freeglut3-dev
RUN apt-get install -y libglc-dev
RUN apt-get install -y libedit-dev
RUN apt-get install -y libglw1-mesa
RUN apt-get install -y libglw1-mesa-dev


## EOF
