HADDOCK_BRANCH=haddock
git switch ${HADDOCK_BRANCH}

git add *

git config user.name github-actions
git config user.email github-actions@github.com
git commit -m "Github action: Auto commit"
git push origin ${HADDOCK_BRANCH}
