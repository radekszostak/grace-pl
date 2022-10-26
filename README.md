# grace-pl

## Running on local machine
### Container configuration
1. Install docker on your machine.
2. Build image from Dockerfile:\
`docker build https://raw.githubusercontent.com/radekszostak/grace-pl/master/Dockerfile -t grace-pl --no-cache`
3. Create container from image:\
`docker create -p 8888:8888 --name grace-pl-container grace-pl:latest`

### Running
1. `docker start --interactive grace-pl-container`
2. Open Jupyter Lab at http://localhost:8888/ or attach running container to IDE.
