FROM haskell:8.10

RUN stack build --only-dependencies
RUN stack haddock --haddock-arguments --odir=haddock
