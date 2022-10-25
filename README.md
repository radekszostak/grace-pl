# grace-pl
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/radekszostak/grace-pl/HEAD)

## Running on local machine
### Container configuration
1. Install docker on your machine
2. `docker build https://raw.githubusercontent.com/radekszostak/grace-pl/master/Dockerfile -t grace-pl --no-cache`
3. `docker create -p 8888:8888 --name grace-pl-container grace-pl:latest`

### Running
1. `docker start --interactive grace-pl-container`
2. Open Jupyter Lab at http://localhost:8888/ or attach running container to IDE.
