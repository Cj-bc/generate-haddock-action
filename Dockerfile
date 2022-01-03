FROM haskell:8.10

RUN git worktree add haddock haddock

RUN stack build --only-dependencies

RUN stack haddock --haddock-arguments --odir=haddock

workdir haddock
CMD ./commit-artifact.sh
