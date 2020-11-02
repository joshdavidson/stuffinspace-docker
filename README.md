# StuffinSpace-docker
Docker build files for the jeyoder StuffinSpace project
## To build Docker Image
git submodule update --init --recursive
docker build -t joshdavidson/StuffInSpace --force-rm .