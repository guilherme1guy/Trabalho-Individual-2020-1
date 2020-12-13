#! /bin/bash

set -v

HEROKU_APP_NAME=$1
DEPLOY_FOLDER=$2
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

git remote add heroku https://heroku:${HEROKU_API_TOKEN}@git.heroku.com/${HEROKU_APP_NAME}.git
git push heroku `git subtree split --prefix ${DEPLOY_FOLDER} ${CURRENT_BRANCH}`:refs/heads/master --force