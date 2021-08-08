#!/bin/bash

case "$1" in
  build | Build)
    gcloud builds submit --tag gcr.io/decisive-unison-321320/embroi-db
    echo "Finished building EmbroiDB."
    ;;

  deploy | Deploy)
    gcloud run deploy --image gcr.io/decisive-unison-321320/embroi-db
    ;;

  *)
    echo "You must run ./build-deploy.sh with an argument of either [submit] or [deploy]."
    ;;
esac