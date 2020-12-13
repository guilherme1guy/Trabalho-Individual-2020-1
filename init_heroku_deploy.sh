#! /bin/bash

set -v

DEPLOY_MODE=$1


if [ "$DEPLOY_MODE" = "api_hom" ]; then
    /bin/bash ./heroku_deploy.sh $HEROKU_API_HOM_APP_NAME api/
elif [ "$DEPLOY_MODE" = "api_prod" ]; then
    /bin/bash ./heroku_deploy.sh $HEROKU_API_PROD_APP_NAME api/
elif [ "$DEPLOY_MODE" = "client_hom" ]; then
    /bin/bash ./heroku_deploy.sh $HEROKU_CLIENT_HOM_APP_NAME client/
elif [ "$DEPLOY_MODE" = "client_prod" ]; then
    /bin/bash ./heroku_deploy.sh $HEROKU_CLIENT_PROD_APP_NAME client/
else
    printf "ERROR: Unknow option\n Options are: api_hom, api_prod, client_hom, client_prod\n"
    exit 1
fi
