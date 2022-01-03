FROM haskell:8.10

RUN apt install git

workdir $GITHUB_WORKSPACE

RUN git worktree add haddock haddock

COPY *.cabal stack.yaml stack.yaml.lock $GITHUB_WORKSPACE
RUN stack build --only-dependencies

COPY . $GITHUB_WORKSPACE
RUN stack haddock --haddock-arguments --odir=haddock

workdir haddock
CMD ./commit-artifact.sh
