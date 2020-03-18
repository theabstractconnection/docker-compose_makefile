#!/bin/bash
: ${TRANSPORT:="ssh"}

case $TRANSPORT in
 ssh)   GIT_URL="git@github.com:theabstractconnection/docker_docker-compose_makefile.git" ;;
 http)  GIT_URL="https://github.com/theabstractconnection/docker_docker-compose_makefile.git" ;;
 https) GIT_URL="https://github.com/theabstractconnection/docker_docker-compose_makefile.git" ;;
esac

echo ""
echo "TRANSPORT : $TRANSPORT"
echo "GIT_URL   :  $GIT_URL"
echo ""

echo ">>> CLONING REPOSITORY"
git clone $GIT_URL

echo ">>> COPYING FILES"
cp ./docker_docker-compose_makefile/docker-compose.yml .
cp ./docker_docker-compose_makefile/Dockerfile .
cp ./docker_docker-compose_makefile/Makefile .
cp ./docker_docker-compose_makefile/LICENSE .

echo ">>> DELETING REPOSITORY"
rm -rf docker_docker-compose_makefile

# USAGE
# curl https://github.com/theabstractconnection/docker_docker-compose_makefile/blob/master/Dockerfile | bash