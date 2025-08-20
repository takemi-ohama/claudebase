export U_ID=$(id -u)
export G_ID=$(id -g)
export DOCKER_GID=$(grep docker /etc/group | cut -d: -f3)
export COMPOSE_PROJECT_NAME=$(basename "$PWD")
docker compose stop -t0
docker compose up -d --scale dev=3
