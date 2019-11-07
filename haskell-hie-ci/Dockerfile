from quay.io/haskell_works/stack-build-icu
maintainer Alan Zimmerman <alan.zimm@gmail.com>

RUN apt-get update && apt-get install -y \
  libgmp-dev \
  curl \
  git \
  libtinfo-dev \
  libicu-dev \
  zlib1g-dev \
  z3 libz3-dev

ENV PATH /root/.local/bin:/root/.stack/programs/x86_64-linux/ghc-8.6.5/bin/:$PATH

RUN stack upgrade

RUN stack setup 8.6.5

RUN stack install cabal-install
RUN cabal new-update
RUN stack install alex
RUN stack install happy

RUN cabal new-install liquidhaskell

ENV PATH /root/.cabal/bin:$PATH
