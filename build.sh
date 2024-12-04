set -e
source ./config.env
docker buildx build . -f ./Dockerfile.jupyterhub -t \
  subsurfaceinsights/jupyterhub \
  --build-arg DEFAULT_USER=$DEFAULT_USER \
  --build-arg DEFAULT_PASS=$DEFAULT_PASS \
  --build-arg EXTERNAL_IP=$EXTERNAL_IP

docker buildx build . -f ./Dockerfile.jupyterhub-singleuser -t \
  subsurfaceinsights/jupyterhub-singleuser \
  --build-arg ODMX_REV=$ODMX_REV

set +e
docker network create jupyterhub
set -e
if [ ! -d ./jupyterhub ]
then
  echo 'Creating new base dir'
  mkdir -p ./jupyterhub
  cp ./jupyterhub_config_base.py ./jupyterhub/jupyterhub_config.py
fi
docker compose up -d
echo "Build complete, try going to http://${EXTERNAL_IP}:8000"
