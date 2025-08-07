export U_ID=$(id -u)
export G_ID=$(id -g)
export DOCKER_GID=$(grep docker /etc/group | cut -d: -f3)
docker compose down -t0
docker compose up -d
