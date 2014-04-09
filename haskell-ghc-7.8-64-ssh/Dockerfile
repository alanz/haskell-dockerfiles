# build with
#  docker build -t 'alanz/haskell-ghc-7.8-64-ssh' .
# run with
# docker run -P -d 'alanz/haskell-ghc-7.8-64-ssh'
# docker run -p 2222:22 -d 'alanz/haskell-ghc-7.8-64-ssh'

# Access by
#  ssh -X -l docker localhost -p 2222


FROM alanz/haskell-ghc-7.8-64

MAINTAINER alan.zimm@gmail.com

ENV DEBIAN_FRONTEND noninteractive

#-----------------------------------------------------------------------

# My theory on this requiring two after each other is that it prompts
# a flush of the DNS for cdn.debian.net
RUN echo "1" && apt-get update
RUN echo "2" && apt-get update

RUN apt-get -y install adduser sudo wget openssh-server

#DOCKER_PASSWORD=password
#echo User: docker Password: $DOCKER_PASSWORD
#DOCKER_ENCRYPYTED_PASSWORD=`perl -e 'print crypt('"$DOCKER_PASSWORD"', "aa"),"\n"'`
# result of above is aajfMKNH1hTm2
#useradd -m -d /home/docker -p $DOCKER_ENCRYPYTED_PASSWORD docker
RUN useradd -m -d /home/docker -p 'aajfMKNH1hTm2' docker
#RUN useradd -m -d /home/docker docker
RUN sed -Ei 's/adm:x:4:/docker:x:4:docker/' /etc/group
RUN adduser docker sudo

# Set the default shell as bash for docker user.
RUN chsh -s /bin/bash docker

#RUN useradd -m -d /home/docker -s /bin/bash docker
RUN echo "docker ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/docker && chmod 0440 /etc/sudoers.d/docker
#ENV HOME /home/docker
#WORKDIR /home/docker
#USER docker

#-----------------------------------------------------------------------
# Add some useful stuff

RUN apt-get -y install git emacs24


#-----------------------------------------------------------------------

# Set up sshd directory
RUN sudo mkdir /var/run/sshd

# Expose the ssh port
EXPOSE 22
# Start shell and ssh services.
CMD ["/usr/sbin/sshd", "-D"]

