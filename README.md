# grace-pl

## Setting up environment
1. Install docker on your machine
2. `docker build https://raw.githubusercontent.com/radekszostak/grace-pl/master/Dockerfile -t grace-pl`
3. `docker create -p 8888:8888 --name grace-pl-container grace-pl:latest`

## Running environment
1. `docker start --interactive grace-pl-container`
2. Open Jupyter Lab at http://localhost:8888/ or attach running container to IDE.
