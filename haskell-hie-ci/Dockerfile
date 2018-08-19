from quay.io/haskell_works/stack-build-icu
maintainer Alan Zimmerman <alan.zimm@gmail.com>

RUN apt-get update && apt-get install -y \
  libgmp-dev \
  curl \
  git \
  libtinfo-dev \
  libicu-dev \
  zlib1g-dev \
  libz3-dev

ENV PATH /root/.local/bin:/root/.stack/programs/x86_64-linux/ghc-8.2.2/bin/:$PATH

RUN stack setup 8.2.2

RUN stack install cabal-install
RUN cabal update
RUN stack install alex
RUN stack install happy

RUN cabal install liquidhaskell

ENV PATH /root/.cabal/bin:$PATH
